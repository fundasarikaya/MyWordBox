import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';
part 'line_add_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class LineAddModel extends INetworkModel<LineAddModel> {
  bool memorized;
  String english;
  String turkish;
  int userId;

  LineAddModel({this.memorized, this.english, this.turkish, this.userId});

  @override
  LineAddModel fromJson(Map<String, Object> json) {
    return _$LineAddModelFromJson(json);
  }

  @override
  Map<String, Object> toJson() => _$LineAddModelToJson(this);

  factory LineAddModel.fromJson(Map<String, Object> json) {
    return _$LineAddModelFromJson(json);
  }
}
