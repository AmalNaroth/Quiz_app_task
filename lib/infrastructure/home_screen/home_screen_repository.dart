import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_app_artifitia/core/api_end_points.dart';
import 'package:quiz_app_artifitia/domain/home_screen/home_screen_services.dart';
import 'package:quiz_app_artifitia/domain/quiz_model_data/quiz_model_data.dart';
import 'package:quiz_app_artifitia/utils/failures/main_failures.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: HomeScreenServices)
class HomeScreenRepository extends HomeScreenServices {
  @override
  Future<Either<MainFailure, List<QuizModelData>>> getQuizDateItems() async {
    final Dio dio = Dio();
    try {
      final response = await dio.get(apiEndPoints);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // print(response.data);
        final responseList = (response.data as List<dynamic>)
            .map(
              (item) => QuizModelData.fromJson(item),
            )
            .toList();
        return right(responseList);
      } else {
        return left(
          const MainFailure.serverFailure(),
        );
      }
    } catch (error) {
      return left(
        const MainFailure.clientFailure(),
      );
    }
  }
}
