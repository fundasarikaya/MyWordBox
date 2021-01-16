// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return HomeModel(
    id: json['_id'] as int,
    name: json['name'] as String,
    path: json['path'] as String,
    sira: json['sira'] as int,
  );
}

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'path': instance.path,
      'sira': instance.sira,
    };
