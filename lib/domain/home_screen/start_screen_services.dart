import 'package:dartz/dartz.dart';
import 'package:quiz_app_artifitia/domain/hive_data_model/quiz_model_hive.dart';
import 'package:quiz_app_artifitia/utils/failures/main_failures.dart';

abstract class StartScreenServices{
  Future<Either<MainFailure,List<QuizModel>>> getQuizDateItems();
}