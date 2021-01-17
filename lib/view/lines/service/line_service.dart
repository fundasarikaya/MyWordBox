import 'package:MyWordBox/core/constants/services/services_constants.dart';
import 'package:MyWordBox/view/_product/_utilty/service_helper.dart';
import 'package:MyWordBox/view/_product/enum/network_route_enum.dart';
import 'package:MyWordBox/view/lines/model/line_model.dart';
import 'package:MyWordBox/view/lines/service/ILineService.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

class LineService extends ILineService with ServiceHelper {
  LineService(INetworkManager manager, GlobalKey<ScaffoldState> scaffoldyKey)
      : super(manager, scaffoldyKey);

  @override
  Future<List<LineModel>> fetchLinesList() async {
    final client = Dio();
    final url =
        ServiceConstants.BASE_URL + NetworkRoutes.LINES.rawValue + ".json";
    final response = await client.get(url);
    if (response.statusCode == 200) {
      final kelimeList = List<LineModel>();
      response.data.forEach((key, value) {
        LineModel model = LineModel.fromJson(value);
        model.key = key;
        kelimeList.add(model);
      });
      return kelimeList;
    } else
      print(response.statusCode);

    //return response.data;
  }
}
