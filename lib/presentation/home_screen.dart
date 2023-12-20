import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_artifitia/application/home_screen_bloc/home_screen_bloc.dart';
import 'package:quiz_app_artifitia/presentation/widgets/custom_text_widget.dart';
import 'package:quiz_app_artifitia/utils/size_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<HomeScreenBloc>(context).add(
      const HomeScreenEvent.started(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: mWidth,
          child: Column(
            children: [
              const LinearProgressIndicator(),
              CustomTextWidget(
                  textValue:
                      "Which plant in our system is know as the Red Plant?",
                  fontColor: Colors.white,
                  textSize: 25,
                  fontWeight: FontWeight.w100),
            ],
          ),
        ),
      ),
    );
  }
}
