// quiz_model.dart

import 'package:hive/hive.dart';
 part 'quiz_model_hive.g.dart';


@HiveType(typeId: 0)
class QuizModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String question;

  @HiveField(2)
  final List<Options> options;

  @HiveField(3)
  final DateTime createdAt;

  @HiveField(4)
  final DateTime updatedAt;

  QuizModel({
    required this.id,
    required this.question,
    required this.options,
    required this.createdAt,
    required this.updatedAt,
  });

  factory QuizModel.fromJson(Map<String, dynamic> json) {
    return QuizModel(
      id: json['_id'],
      question: json['question'],
      options: List<Options>.from(
        json['options'].map((x) => Options.fromJson(x)),
      ),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}

@HiveType(typeId: 1)
class Options extends HiveObject {
  @HiveField(0)
  final String text;

  @HiveField(1)
  final bool isCorrect;

  @HiveField(2)
  final String id;

  Options({
    required this.text,
    required this.isCorrect,
    required this.id,
  });

  factory Options.fromJson(Map<String, dynamic> json) {
    return Options(
      text: json['text'],
      isCorrect: json['isCorrect'],
      id: json['_id'],
    );
  }
}




