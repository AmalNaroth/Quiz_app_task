import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app_artifitia/routes/app_routes.dart';
import 'package:quiz_app_artifitia/utils/color_constants.dart';
import 'package:quiz_app_artifitia/utils/navigator_service.dart';
import 'package:quiz_app_artifitia/utils/size_constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
  ]).then(
    (value) {
      runApp(
        const MyApp(),
      );
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    mHight = size.height;
    mWidth = size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      navigatorKey: NavigatorService.navigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
        scaffoldBackgroundColor: bgColor
      ),
      initialRoute: AppRoutes.initialScreen,
      routes: AppRoutes.routes,
    );
  }
}
