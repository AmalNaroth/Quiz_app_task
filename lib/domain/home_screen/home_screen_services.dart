import 'package:dartz/dartz.dart';
import 'package:quiz_app_artifitia/domain/quiz_model_data/quiz_model_data.dart';
import 'package:quiz_app_artifitia/utils/failures/main_failures.dart';

abstract class HomeScreenServices{
  Future<Either<MainFailure,List<QuizModelData>>> getQuizDateItems();
}