import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_artifitia/application/start_screen_bloc/start_screen_bloc.dart';
import 'package:quiz_app_artifitia/presentation/widgets/custom_text_widget.dart';
import 'package:quiz_app_artifitia/utils/color_constants.dart';
import 'package:quiz_app_artifitia/utils/dependency_injection/dependency_injection.dart';
import 'package:quiz_app_artifitia/utils/size_constants.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StartScreenBloc, StartScreenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              padding: EdgeInsets.symmetric(vertical: 50),
              width: mWidth,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    fHight60,
                    Container(
                      height: mWidth! * .8,
                      width: mWidth! * .8,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/startScreenImage.png"),
                              fit: BoxFit.contain)),
                    ),
                    CustomSizeHightWidget(value: .01),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: purpleColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 40, vertical: 15)),
                      onPressed: () {
                        BlocProvider.of<StartScreenBloc>(context).add(
                           StartScreenEvent.startQuizButtonClick(ctx: context),
                        );
                      },
                      child: CustomTextWidget(
                          textValue: "Start Quiz",
                          fontColor: textColorWhite,
                          textSize: 18),
                    ),
                    CustomSizeHightWidget(value: .16),
                    CustomTextWidget(
                      textValue: "powered by",
                      fontColor: lightColorText,
                    ),
                    fHight05,
                    CustomTextWidget(
                        textValue: "www.artifitia.com", fontColor: lightColorText)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
