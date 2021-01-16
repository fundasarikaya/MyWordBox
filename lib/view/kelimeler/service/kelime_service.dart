import 'package:MyWordBox/core/constants/services/services_constants.dart';
import 'package:MyWordBox/view/_product/_utilty/service_helper.dart';
import 'package:MyWordBox/view/_product/enum/network_route_enum.dart';
import 'package:MyWordBox/view/kelimeler/model/kelime_model.dart';
import 'package:MyWordBox/view/kelimeler/service/IKelimeService.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

class KelimeService extends IKelimeService with ServiceHelper {
  KelimeService(INetworkManager manager, GlobalKey<ScaffoldState> scaffoldyKey)
      : super(manager, scaffoldyKey);

  @override
  Future<List<KelimeModel>> fetchKelimeList() async {
    final client = Dio();
    final url =
        ServiceConstants.BASE_URL + NetworkRoutes.KELIME.rawValue + ".json";
    final response = await client.get(url);
    if (response.statusCode == 200) {
      final kelimeList = List<KelimeModel>();
      response.data.forEach((key, value) {
        KelimeModel model = KelimeModel.fromJson(value);
        model.key = key;
        kelimeList.add(model);
      });
      return kelimeList;
    } else
      print(response.statusCode);

    //return response.data;
  }
}
