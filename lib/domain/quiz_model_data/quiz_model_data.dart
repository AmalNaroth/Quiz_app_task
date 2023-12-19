import 'package:json_annotation/json_annotation.dart';

import 'option.dart';

part 'quiz_model_data.g.dart';

@JsonSerializable()
class QuizModelData {
	@JsonKey(name: '_id') 
	String? id;
	String? question;
	List<Option>? options;
	DateTime? createdAt;
	DateTime? updatedAt;
	@JsonKey(name: '__v') 
	int? v;

	QuizModelData({
		this.id, 
		this.question, 
		this.options, 
		this.createdAt, 
		this.updatedAt, 
		this.v, 
	});

	factory QuizModelData.fromJson(Map<String, dynamic> json) {
		return _$QuizModelDataFromJson(json);
	}

	Map<String, dynamic> toJson() => _$QuizModelDataToJson(this);
}
