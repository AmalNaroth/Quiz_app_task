import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_artifitia/application/home_screen_bloc/home_screen_bloc.dart';
import 'package:quiz_app_artifitia/presentation/widgets/custom_text_widget.dart';
import 'package:quiz_app_artifitia/utils/color_constants.dart';
import 'package:quiz_app_artifitia/utils/size_constants.dart';
import 'package:quiz_app_artifitia/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Center(
                child: state.isLoading == true
                    ? const CircularProgressIndicator()
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 70, horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                LinearProgressIndicator(
                                  minHeight: 25,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  value:
                                      prgressbarValue(currectAnsersList.length),
                                  color: const Color(0xFFC353D6),
                                  backgroundColor: const Color(0xFF6C2677),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: CustomTextWidget(
                                      textValue:
                                          currectAnsersList.length.toString(),
                                      fontColor: Colors.black),
                                ),
                              ],
                            ),
                            fHight70,
                            CustomTextWidget(
                              textValue: state.quizList[state.index].question,
                              fontColor: whiteColor,
                              textSize: 25,
                              fontWeight: FontWeight.w100,
                            ),
                            fHight30,
                            ListView.separated(
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(20),
                                      backgroundColor:
                                          state.selectedIndex != null
                                              ? state.selectedIndex == index
                                                  ? state
                                                          .quizList[state.index]
                                                          .options[index]
                                                          .isCorrect
                                                      ? Colors.green
                                                      : Colors.red
                                                  : state
                                                          .quizList[state.index]
                                                          .options[index]
                                                          .isCorrect
                                                      ? Colors.green
                                                      : null
                                              : null,
                                      shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: whiteColor),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    onPressed: () {
                                      if (state.selectedIndex == null) {
                                        BlocProvider.of<HomeScreenBloc>(context)
                                            .add(
                                          HomeScreenEvent.selectedIndex(
                                              selectedIndex: index,
                                              selectedAnswer: state
                                                  .quizList[state.index]
                                                  .options[index]
                                                  .isCorrect),
                                        );
                                      }
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomTextWidget(
                                                textValue:
                                                    "${index + 1}. ${state.quizList[state.index].options[index].text}",
                                                fontColor: textColorWhite,
                                                textSize: 17,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return fHight20;
                                },
                                itemCount:
                                    state.quizList[state.index].options.length),
                            fHight30,
                            Visibility(
                              visible: state.selectedIndex != null,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      BlocProvider.of<HomeScreenBloc>(context)
                                          .add(
                                        const HomeScreenEvent
                                            .nextButtonClicked(),
                                      );
                                      BlocProvider.of<HomeScreenBloc>(context)
                                          .add(
                                        const HomeScreenEvent.selectedIndex(
                                            selectedIndex: null),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        backgroundColor: whiteColor,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 10)),
                                    child: CustomTextWidget(
                                        textValue: "Next", textSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// ...
