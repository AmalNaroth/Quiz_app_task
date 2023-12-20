import 'package:flutter/material.dart';
import 'package:quiz_app_artifitia/presentation/home_screen.dart';
import 'package:quiz_app_artifitia/presentation/result_screen.dart';
import 'package:quiz_app_artifitia/presentation/start_screen.dart';
import 'package:quiz_app_artifitia/presentation/widgets/internet_error_screen.dart';
import 'package:quiz_app_artifitia/presentation/widgets/server_error_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_one_screen';

  static const String initialScreen = '/initial_screen';

  static const String resultScreen = '/result-screen';

  static const String internetError = '/internet-error';

  static const String serverError = '/server-error';

  static Map<String, WidgetBuilder> get routes => {
        initialScreen: (context) =>  StartScreen(),
        homeScreen: (context) => HomeScreen(),
        resultScreen :(context) => ResultScreen(),
        internetError :  (context) => InternetErrorScreen(),
        serverError :(context) =>  ServerErrorScreen()
      };
}
