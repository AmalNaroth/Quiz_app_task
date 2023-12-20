import 'package:hive/hive.dart';
import 'package:quiz_app_artifitia/domain/quiz_model_data/option.dart';

 part 'hive_model.g.dart';

@HiveType(typeId: 0)
class QuizQuestion extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String question;

  @HiveField(2)
  final List<Map<String, dynamic>> options;

  // Add other fields as needed

  QuizQuestion({required this.id, required this.question, required this.options});
}