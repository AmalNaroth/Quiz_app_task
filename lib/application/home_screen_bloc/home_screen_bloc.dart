import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_app_artifitia/domain/hive_data_model/quiz_model_hive.dart';
import 'package:quiz_app_artifitia/domain/home_screen/home_screen_services.dart';
import 'package:quiz_app_artifitia/routes/app_routes.dart';
import 'package:quiz_app_artifitia/utils/navigator_service.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

List<bool> currectAnsersList = [];

@injectable
class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc(HomeScreenServices instance)
      : super(HomeScreenState.initial()) {
    on<_Started>(
      (event, emit) async {
        final data = await instance.getLocalData();
        data.fold((l) {
          print(l);
          emit(
            state.copyWith(isLoading: true),
          );
        }, (r) {
          emit(
            state.copyWith(quizList: r, index: state.index),
          );
          emit(
            state.copyWith(isLoading: false),
          );
        });
      },
    );

    on<_NextButtonClicked>((event, emit) {
      if (state.index < 4) {
        emit(
          state.copyWith(index: state.index + 1),
        );
      } else {
        NavigatorService.pushNamedAndRemoveUntil(AppRoutes.resultScreen);
      }
    });

    on<_SelectedIndex>(
      (event, emit) {
        emit(
          state.copyWith(selectedIndex: event.selectedIndex),
        );
        if(event.selectedAnswer!=null && event.selectedAnswer==true){
          currectAnsersList.add(true);
        }
      },
    );
  }
}
