import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app_artifitia/application/start_screen_bloc/start_screen_bloc.dart';
import 'package:quiz_app_artifitia/presentation/widgets/custom_text_widget.dart';

class ServerErrorScreen extends StatelessWidget {
  const ServerErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Lottie.asset("assets/animation/Animation - 1703091817351.json"),
             ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white
              ),
              onPressed: () {
                BlocProvider.of<StartScreenBloc>(context).add(
                  const StartScreenEvent.refresh(),
                );
              },
              child: CustomTextWidget(textValue: "Try Again"),
            ),
          ],
        ),
      ),
    );
  }
}