import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';
part 'kelime_ekle_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class KelimeEkleModel extends INetworkModel<KelimeEkleModel> {
  bool memorized;
  String english;
  String turkish;
  int userId;

  KelimeEkleModel({this.memorized, this.english, this.turkish, this.userId});

  @override
  KelimeEkleModel fromJson(Map<String, Object> json) {
    return _$KelimeEkleModelFromJson(json);
  }

  @override
  Map<String, Object> toJson() => _$KelimeEkleModelToJson(this);

  factory KelimeEkleModel.fromJson(Map<String, Object> json) {
    return _$KelimeEkleModelFromJson(json);
  }
}
