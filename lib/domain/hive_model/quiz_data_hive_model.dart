// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive_flutter/adapters.dart';
import 'package:quiz_app_artifitia/domain/quiz_model_data/quiz_model_data.dart';
part 'quiz_data_hive_model.g.dart';

@HiveType(typeId: 0)
class QuizeDataHive {
  @HiveField(0)
  List<QuizModelData> quizeDatas;

  QuizeDataHive({
    required this.quizeDatas
  });

  @override
  String toString() {
    return "";
  }
}