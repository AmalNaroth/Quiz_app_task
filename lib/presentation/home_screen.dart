import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_artifitia/application/home_screen_bloc/home_screen_bloc.dart';
import 'package:quiz_app_artifitia/presentation/widgets/custom_text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<HomeScreenBloc>(context).add(
      const HomeScreenEvent.started(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
          builder: (context, state) {
            return Center(
              child: state.isLoading == true
                  ? const CircularProgressIndicator()
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const LinearProgressIndicator(),
                        CustomTextWidget(
                          textValue: state.quizList[state.index].question,
                          fontColor: Colors.white,
                          textSize: 25,
                          fontWeight: FontWeight.w100,
                        ),
                        ...List.generate(
                          state.quizList[state.index].options.length,
                          (index) => ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: state.selectedIndex != null
                                    ? state.selectedIndex == index
                                        ? state.quizList[state.index]
                                                .options[index].isCorrect
                                            ? Colors.green
                                            : Colors.red
                                        : state.quizList[state.index]
                                                .options[index].isCorrect
                                            ? Colors.green
                                            : null
                                    : null),
                            onPressed: () {
                              if (state.selectedIndex == null) {
                                BlocProvider.of<HomeScreenBloc>(context).add(
                                  HomeScreenEvent.selectedIndex(
                                      selectedIndex: index,
                                      selectedAnswer: state
                                          .quizList[state.index]
                                          .options[index]
                                          .isCorrect),
                                );
                              }
                            },
                            child: CustomTextWidget(
                                textValue: state
                                    .quizList[state.index].options[index].text),
                          ),
                        ),
                        Visibility(
                          visible: state.selectedIndex != null,
                          child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<HomeScreenBloc>(context).add(
                                const HomeScreenEvent.nextButtonClicked(),
                              );
                              BlocProvider.of<HomeScreenBloc>(context).add(
                                const HomeScreenEvent.selectedIndex(
                                    selectedIndex: null),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            child: CustomTextWidget(textValue: "Next"),
                          ),
                        ),
                      ],
                    ),
            );
          },
        ),
      ),
    );
  }
}

// ...
