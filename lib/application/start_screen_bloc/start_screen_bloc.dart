import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_app_artifitia/domain/home_screen/home_screen_services.dart';
import 'package:quiz_app_artifitia/domain/store_local_database/hive_model.dart';
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
      }, (r) async{
        final data = r.map(
          (e) => QuizQuestion(
              id: e.id!, question: e.question!, options: []),
        );
       try {
          var quizBox = Hive.box<QuizQuestion>('quizBox');
        await quizBox.clear(); // Clear existing data
        await quizBox.addAll(data.toList(),);
        print('Data stored in Hive!');
       } catch (e) {
         print(e);
       }
      });
      NavigatorService.popAndPushNamed(AppRoutes.homeScreen);
    });
  }
}
