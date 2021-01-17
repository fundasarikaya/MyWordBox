import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';
part 'line_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class LineModel extends INetworkModel<LineModel> {
  // @JsonKey(name: "_id")
  String key;
  bool memorized;
  String english;
  String turkish;
  int userId;

  LineModel(
      {this.key, this.memorized, this.english, this.turkish, this.userId});

  @override
  LineModel fromJson(Map<String, dynamic> json) {
    return _$LineModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$LineModelToJson(this);

  factory LineModel.fromJson(Map<String, dynamic> json) {
    return _$LineModelFromJson(json);
  }
}
