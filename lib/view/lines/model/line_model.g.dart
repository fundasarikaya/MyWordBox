// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineModel _$LineModelFromJson(Map<String, dynamic> json) {
  return LineModel(
    key: json['Key'] as String,
    memorized: json['Memorized'] as bool,
    english: json['English'] as String,
    turkish: json['Turkish'] as String,
    userId: json['UserId'] as int,
  );
}

Map<String, dynamic> _$LineModelToJson(LineModel instance) => <String, dynamic>{
      'Key': instance.key,
      'Memorized': instance.memorized,
      'English': instance.english,
      'Turkish': instance.turkish,
      'UserId': instance.userId,
    };
