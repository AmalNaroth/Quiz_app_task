import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_artifitia/application/home_screen_bloc/home_screen_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static Widget builder(BuildContext context){
    return BlocProvider<HomeScreenBloc>(
    create: (context) => HomeScreenBloc()..add(
      HomeScreenEvent.started()
    ),
    child: HomeScreen(),
  );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}