import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_artifitia/application/home_screen_bloc/home_screen_bloc.dart';
import 'package:quiz_app_artifitia/application/start_screen_bloc/start_screen_bloc.dart';
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
                    Text("${((currectAnsersList.length / questionNumber) * 100).toInt()}% Score",
                    style: TextStyle(
                      color: ((currectAnsersList.length / questionNumber) * 100).toInt() <50 ? Colors.red : Colors.green,
                      fontFamily: "assets/fonts/Kanit/Kanit-Medium.ttf",
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    )),
                    fHight10,
                    CustomTextWidget(
                        textValue: "Quiz completed successfully..!",
                        textSize: 15,
                        fontWeight: FontWeight.bold),
                        fHight10,
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "You attempt ",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          TextSpan(
                              text: "${questionNumber} Questions ",
                              style:
                                  TextStyle(color: Colors.red, fontSize: 16)),
                          TextSpan(
                              text: "and from that ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16)),
                          TextSpan(
                              text: "${currectAnsersList.length} answer ",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 16)),
                          TextSpan(
                              text: "is correct.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              fHight40,
              ((currectAnsersList.length / questionNumber) * 100).toInt() <50 ? ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 30,
                vertical: 12)),
                onPressed: () {
                  BlocProvider.of<HomeScreenBloc>(context).add(
                    HomeScreenEvent.started(),
                  );
                  print(currectAnsersList.length);
                },
                child: CustomTextWidget(textValue: "Try again..!"),
              ) : ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 30,
                vertical: 12)),
                onPressed: () {
                  BlocProvider.of<StartScreenBloc>(context).add(
                    StartScreenEvent.refresh(),
                  );
                  print(currectAnsersList.length);
                },
                child: CustomTextWidget(textValue: "Back..!",
                fontColor: Colors.white,
                fontWeight: FontWeight.w200,
                textSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
