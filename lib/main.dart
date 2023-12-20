import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quiz_app_artifitia/application/home_screen_bloc/home_screen_bloc.dart';
import 'package:quiz_app_artifitia/domain/store_local_database/hive_model.dart';
import 'package:quiz_app_artifitia/routes/app_routes.dart';
import 'package:quiz_app_artifitia/utils/color_constants.dart';
import 'package:quiz_app_artifitia/utils/dependency_injection/dependency_injection.dart';
import 'package:quiz_app_artifitia/utils/navigator_service.dart';
import 'package:quiz_app_artifitia/utils/size_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  await Hive.initFlutter();
  await Hive.openBox<QuizQuestion>('quizBox');
  Hive.registerAdapter(
    QuizQuestionAdapter(),
  );
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeScreenBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quiz App',
        navigatorKey: NavigatorService.navigatorKey,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: false,
            scaffoldBackgroundColor: bgColor),
        initialRoute: AppRoutes.initialScreen,
        routes: AppRoutes.routes,
      ),
    );
  }
}
