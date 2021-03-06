import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';
part 'kelime_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class KelimeModel extends INetworkModel<KelimeModel> {
  // @JsonKey(name: "_id")
  String key;
  bool memorized;
  String english;
  String turkish;
  int userId;

  KelimeModel(
      {this.key, this.memorized, this.english, this.turkish, this.userId});

  @override
  KelimeModel fromJson(Map<String, dynamic> json) {
    return _$KelimeModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$KelimeModelToJson(this);

  factory KelimeModel.fromJson(Map<String, dynamic> json) {
    return _$KelimeModelFromJson(json);
  }
}
