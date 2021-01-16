import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';
part 'home_model.g.dart';

@JsonSerializable()
class HomeModel extends INetworkModel<HomeModel> {
  @JsonKey(name: "_id")
  int id;
  String name;
  String path;
  int sira;

  HomeModel({this.id, this.name, this.path, this.sira});

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);

  @override
  HomeModel fromJson(Map<String, Object> json) {
    return _$HomeModelFromJson(json);
  }
}
