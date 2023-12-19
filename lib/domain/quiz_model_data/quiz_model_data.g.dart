// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuizModelData _$QuizModelDataFromJson(Map<String, dynamic> json) =>
    QuizModelData(
      id: json['_id'] as String?,
      question: json['question'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$QuizModelDataToJson(QuizModelData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'question': instance.question,
      'options': instance.options,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
