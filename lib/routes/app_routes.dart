import 'package:flutter/material.dart';
import 'package:quiz_app_artifitia/presentation/home_screen.dart';
import 'package:quiz_app_artifitia/presentation/start_screen.dart';

class AppRoutes {
  static const String homeScreen = '/home_one_screen';

  static const String initialScreen = '/initial_screen';

  static Map<String, WidgetBuilder> get routes => {
        initialScreen: StartScreen.builder,
        homeScreen: (context) => HomeScreen(),
      };
}
