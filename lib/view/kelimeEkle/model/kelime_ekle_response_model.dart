import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'kelime_ekle_response_model.g.dart';

@JsonSerializable()
class KelimeEkleResponseModel extends INetworkModel<KelimeEkleResponseModel> {
  final String token;

  KelimeEkleResponseModel({this.token});

  @override
  KelimeEkleResponseModel fromJson(Map<String, Object> json) {
    return _$KelimeEkleResponseModelFromJson(json);
  }

  @override
  Map<String, Object> toJson() {
    return _$KelimeEkleResponseModelToJson(this);
  }
}
