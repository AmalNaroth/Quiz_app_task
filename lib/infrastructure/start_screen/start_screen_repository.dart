import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_app_artifitia/core/api_end_points.dart';
import 'package:quiz_app_artifitia/domain/hive_data_model/quiz_model_hive.dart';
import 'package:quiz_app_artifitia/domain/home_screen/start_screen_services.dart';
import 'package:quiz_app_artifitia/utils/failures/main_failures.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: StartScreenServices)
class HomeScreenRepository extends StartScreenServices {
  @override
  Future<Either<MainFailure, List<QuizModel>>> getQuizDateItems() async {
    final Dio dio = Dio();
    try {
      Response response =
          await dio.get(apiEndPoints);
      if (response.statusCode == 200) {
        List<dynamic> jsonList = response.data;
        List<QuizModel> quizList =
            jsonList.map((e) => QuizModel.fromJson(e)).toList();
        await _saveToHive(quizList);
        return right(quizList);
      } else {
        // Return the Left side of Either with the server failure
        return left(
          const MainFailure.serverFailure(),
        );
      }
    } catch (error) {
      //print(error);
      return left(
        const MainFailure.clientFailure(),
      );
    }
  }
}

// adding for hive local database
Future<void> _saveToHive(List<QuizModel> quizList) async {
  try {
    await Hive.openBox('quizBox');
    var box = Hive.box('quizBox');

    for (var quiz in quizList) {
      await box.put(quiz.id, quiz);
    }
  } catch (e) {
    //print(e);
  }
}


