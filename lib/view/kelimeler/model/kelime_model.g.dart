// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kelime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KelimeModel _$KelimeModelFromJson(Map<String, dynamic> json) {
  return KelimeModel(
    key: json['Key'] as String,
    ezberlendi: json['Ezberlendi'] as bool,
    kelimeEN: json['KelimeEN'] as String,
    kelimeTR: json['KelimeTR'] as String,
    kullaniciID: json['KullaniciID'] as int,
  );
}

Map<String, dynamic> _$KelimeModelToJson(KelimeModel instance) =>
    <String, dynamic>{
      'Key': instance.key,
      'Ezberlendi': instance.ezberlendi,
      'KelimeEN': instance.kelimeEN,
      'KelimeTR': instance.kelimeTR,
      'KullaniciID': instance.kullaniciID,
    };
