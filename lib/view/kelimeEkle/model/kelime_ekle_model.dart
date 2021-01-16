import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';
part 'kelime_ekle_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class KelimeEkleModel extends INetworkModel<KelimeEkleModel> {
  bool ezberlendi;
  String kelimeEN;
  String kelimeTR;
  int kullaniciID;

  KelimeEkleModel(
      {this.ezberlendi, this.kelimeEN, this.kelimeTR, this.kullaniciID});

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
