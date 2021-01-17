// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kelime_ekle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KelimeEkleModel _$KelimeEkleModelFromJson(Map<String, dynamic> json) {
  return KelimeEkleModel(
    memorized: json['Memorized'] as bool,
    english: json['English'] as String,
    turkish: json['Turkish'] as String,
    userId: json['UserId'] as int,
  );
}

Map<String, dynamic> _$KelimeEkleModelToJson(KelimeEkleModel instance) =>
    <String, dynamic>{
      'Memorized': instance.memorized,
      'English': instance.english,
      'Turkish': instance.turkish,
      'UserId': instance.userId,
    };
