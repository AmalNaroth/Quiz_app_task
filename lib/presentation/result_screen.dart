import 'package:flutter/material.dart';
import 'package:quiz_app_artifitia/application/home_screen_bloc/home_screen_bloc.dart';
import 'package:quiz_app_artifitia/presentation/widgets/custom_text_widget.dart';
import 'package:quiz_app_artifitia/utils/size_constants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                height: mWidth! * .7,
                width: mWidth! * .7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/congrats 1.png"),
                    CustomTextWidget(textValue: "50% Score"),
                    CustomTextWidget(
                        textValue: "Quiz completed successfully..!"),
                    RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(children: [
                          TextSpan(
                            text: "You attempt",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          TextSpan(
                              text: "10 Questions ",
                              style:
                                  TextStyle(color: Colors.red, fontSize: 16)),
                          TextSpan(
                              text: "and from that ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                          TextSpan(
                              text: "5 answer ",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 16)),
                          TextSpan(
                              text: "is correct.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16))
                        ]))
                  ],
                ),
              ),
              fHight20,
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    print(currectAnsersList.length);
                  },
                  child: CustomTextWidget(textValue: "Try again..!"))
            ],
          ),
        ),
      ),
    );
  }
}
