import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_app_artifitia/domain/hive_data_model/quiz_model_hive.dart';
import 'package:quiz_app_artifitia/domain/home_screen/home_screen_services.dart';
import 'package:quiz_app_artifitia/utils/failures/main_failures.dart';

@LazySingleton(as: HomeScreenServices)
class HomeScreenRepository implements HomeScreenServices {
  @override
 Future<Either<MainFailure, List<QuizModel>>> getLocalData() async {
  try {
    await Hive.openBox('quizBox');
    var box = Hive.box('quizBox');
    List<QuizModel> quizList = [];
    for (var key in box.keys) {
      var quiz = box.get(key);
      if (quiz != null && quiz is QuizModel) {
        quizList.add(quiz);
      }
    }
    return right(quizList); // Use `right` to indicate success
  } catch (e) {
    print(e);
    return left(
      const MainFailure.localFailure(),
    ); // Use `return` to return the Either value
  }
}
}
