// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kelime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KelimeModel _$KelimeModelFromJson(Map<String, dynamic> json) {
  return KelimeModel(
    key: json['Key'] as String,
    memorized: json['Memorized'] as bool,
    english: json['English'] as String,
    turkish: json['Turkish'] as String,
    userId: json['UserId'] as int,
  );
}

Map<String, dynamic> _$KelimeModelToJson(KelimeModel instance) =>
    <String, dynamic>{
      'Key': instance.key,
      'Memorized': instance.memorized,
      'English': instance.english,
      'Turkish': instance.turkish,
      'UserId': instance.userId,
    };
