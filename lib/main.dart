import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quiz_app_artifitia/application/home_screen_bloc/home_screen_bloc.dart';
import 'package:quiz_app_artifitia/application/start_screen_bloc/start_screen_bloc.dart';
import 'package:quiz_app_artifitia/domain/hive_data_model/quiz_model_hive.dart';
import 'package:quiz_app_artifitia/routes/app_routes.dart';
import 'package:quiz_app_artifitia/utils/color_constants.dart';
import 'package:quiz_app_artifitia/utils/dependency_injection/dependency_injection.dart';
import 'package:quiz_app_artifitia/utils/navigator_service.dart';
import 'package:quiz_app_artifitia/utils/size_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  await Hive.initFlutter();
  Hive.registerAdapter(QuizModelAdapter());
  Hive.registerAdapter(OptionsAdapter());
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
          create: (context) => getIt<HomeScreenBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              getIt<StartScreenBloc>()..add(const StartScreenEvent.started()),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quiz App',
        navigatorKey: NavigatorService.navigatorKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: false,
          scaffoldBackgroundColor: bgColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: bgColor,
            ),
          ),
        ),
        initialRoute: AppRoutes.initialScreen,
        routes: AppRoutes.routes,
      ),
    );
  }
}