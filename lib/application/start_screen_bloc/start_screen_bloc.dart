import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_app_artifitia/application/home_screen_bloc/home_screen_bloc.dart';
import 'package:quiz_app_artifitia/domain/hive_data_model/quiz_model_hive.dart';
import 'package:quiz_app_artifitia/domain/home_screen/home_screen_services.dart';
import 'package:quiz_app_artifitia/domain/home_screen/start_screen_services.dart';
import 'package:quiz_app_artifitia/routes/app_routes.dart';
import 'package:quiz_app_artifitia/utils/failures/main_failures.dart';
import 'package:quiz_app_artifitia/utils/navigator_service.dart';

part 'start_screen_event.dart';
part 'start_screen_state.dart';
part 'start_screen_bloc.freezed.dart';

@injectable
class StartScreenBloc extends Bloc<StartScreenEvent, StartScreenState> {
  StartScreenBloc(
      StartScreenServices startInstance, HomeScreenServices homestartInstance)
      : super(StartScreenState.initial()) {
        //getting data in hive local databse
    on<_Started>((event, emit) async {
      final response = await startInstance.getQuizDateItems();
      response.fold(
        (l) {
         if(l == MainFailure.clientFailure()){
          NavigatorService.pushNamedAndRemoveUntil(AppRoutes.internetError);
         }else{
          NavigatorService.pushNamedAndRemoveUntil(AppRoutes.serverError);
         }
        },
        (r) {
          
        },
      );
    });

    //refreshing the internet or local databse and get data
    on<_Refresh>((event, emit) async{
      final response = await startInstance.getQuizDateItems();
      response.fold(
        (l) {
         if(l == MainFailure.clientFailure()){
          NavigatorService.pushNamedAndRemoveUntil(AppRoutes.internetError);
         }else{
          NavigatorService.pushNamedAndRemoveUntil(AppRoutes.serverError);
         }
        },
        (r) {
          NavigatorService.pushNamedAndRemoveUntil(AppRoutes.initialScreen);
        },
      );
    });

    //calling home bloc to here
    on<_StartQuizButtonClick>(
      (event, emit) async {
        BlocProvider.of<HomeScreenBloc>(event.ctx).add(
          const HomeScreenEvent.started(),
        );
      },
    );
  }
}
