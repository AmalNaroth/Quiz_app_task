import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_app_artifitia/domain/hive_data_model/quiz_model_hive.dart';
import 'package:quiz_app_artifitia/domain/home_screen/start_screen_services.dart';
import 'package:quiz_app_artifitia/infrastructure/home_screen/start_screen_repository.dart';
import 'package:quiz_app_artifitia/routes/app_routes.dart';
import 'package:quiz_app_artifitia/utils/navigator_service.dart';

part 'start_screen_event.dart';
part 'start_screen_state.dart';
part 'start_screen_bloc.freezed.dart';

@injectable
class StartScreenBloc extends Bloc<StartScreenEvent, StartScreenState> {
  StartScreenBloc(StartScreenServices instance)
      : super(
          StartScreenState.initial(),
        ) {
    late var response;
    on<_Started>((event, emit) async {
      
    });

    on<_StartQuizButtonClick>(
      (event, emit) async {
        emit(
          state.copyWith(isLoading: true),
        );
        response = await instance.getQuizDateItems();
        response.fold(
          (l) {
            print(l);
          },
          (r) {
            NavigatorService.popAndPushNamed(AppRoutes.homeScreen);
          },
        );
      },
    );
  }
}
