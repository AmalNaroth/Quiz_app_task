import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_app_artifitia/domain/home_screen/home_screen_services.dart';
import 'package:quiz_app_artifitia/routes/app_routes.dart';
import 'package:quiz_app_artifitia/utils/navigator_service.dart';

part 'start_screen_event.dart';
part 'start_screen_state.dart';
part 'start_screen_bloc.freezed.dart';

@injectable
class StartScreenBloc extends Bloc<StartScreenEvent, StartScreenState> {
  StartScreenBloc(HomeScreenServices instance) : super(_Initial()) {
    on<_Started>((event, emit) {
      print("hii");
    });

    on<_StartQuizButtonClick>((event, emit) async {
      //print("Navigation clicked");
      final response = await instance.getQuizDateItems();
      response.fold((l) {
        print(l);
      }, (r) {
        for (var item in r) {
          print(item.question);
        }
      });
      NavigatorService.popAndPushNamed(AppRoutes.homeScreen);
    });
  }
}
