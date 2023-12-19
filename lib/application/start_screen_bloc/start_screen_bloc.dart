import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_app_artifitia/routes/app_routes.dart';
import 'package:quiz_app_artifitia/utils/navigator_service.dart';

part 'start_screen_event.dart';
part 'start_screen_state.dart';
part 'start_screen_bloc.freezed.dart';

class StartScreenBloc extends Bloc<StartScreenEvent, StartScreenState> {
  StartScreenBloc() : super(_Initial()) {
    on<_Started>((event, emit) {
      
    });

    on<_StartQuizButtonClick>((event, emit) {
      //print("Navigation clicked");
      NavigatorService.pushNamedAndRemoveUntil(AppRoutes.homeScreen);
    });
  }
}
