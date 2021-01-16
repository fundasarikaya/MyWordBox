// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kelime_ekle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KelimeEkleModel _$KelimeEkleModelFromJson(Map<String, dynamic> json) {
  return KelimeEkleModel(
    ezberlendi: json['Ezberlendi'] as bool,
    kelimeEN: json['KelimeEN'] as String,
    kelimeTR: json['KelimeTR'] as String,
    kullaniciID: json['KullaniciID'] as int,
  );
}

Map<String, dynamic> _$KelimeEkleModelToJson(KelimeEkleModel instance) =>
    <String, dynamic>{
      'Ezberlendi': instance.ezberlendi,
      'KelimeEN': instance.kelimeEN,
      'KelimeTR': instance.kelimeTR,
      'KullaniciID': instance.kullaniciID,
    };
