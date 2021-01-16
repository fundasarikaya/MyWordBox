import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';
part 'kelime_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class KelimeModel extends INetworkModel<KelimeModel> {
  // @JsonKey(name: "_id")
  String key;
  bool ezberlendi;
  String kelimeEN;
  String kelimeTR;
  int kullaniciID;

  KelimeModel(
      {this.key,
      this.ezberlendi,
      this.kelimeEN,
      this.kelimeTR,
      this.kullaniciID});

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
