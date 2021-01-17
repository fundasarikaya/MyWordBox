import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'line_add_response_model.g.dart';

@JsonSerializable()
class LineAddResponseModel extends INetworkModel<LineAddResponseModel> {
  final String token;

  LineAddResponseModel({this.token});

  @override
  LineAddResponseModel fromJson(Map<String, Object> json) {
    return _$LineAddResponseModelFromJson(json);
  }

  @override
  Map<String, Object> toJson() {
    return _$LineAddResponseModelToJson(this);
  }
}
