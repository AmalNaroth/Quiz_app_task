// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_data_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuizeDataHiveAdapter extends TypeAdapter<QuizeDataHive> {
  @override
  final int typeId = 0;

  @override
  QuizeDataHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuizeDataHive(
      quizeDatas: (fields[0] as List).cast<QuizModelData>(),
    );
  }

  @override
  void write(BinaryWriter writer, QuizeDataHive obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.quizeDatas);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuizeDataHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
