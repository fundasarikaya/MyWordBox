// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_add_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineAddModel _$LineAddModelFromJson(Map<String, dynamic> json) {
  return LineAddModel(
    memorized: json['Memorized'] as bool,
    english: json['English'] as String,
    turkish: json['Turkish'] as String,
    userId: json['UserId'] as int,
  );
}

Map<String, dynamic> _$LineAddModelToJson(LineAddModel instance) =>
    <String, dynamic>{
      'Memorized': instance.memorized,
      'English': instance.english,
      'Turkish': instance.turkish,
      'UserId': instance.userId,
    };
