import 'package:flutter/material.dart';
import 'package:MyWordBox/view/_product/_utilty/service_helper.dart';
import 'package:MyWordBox/view/_product/enum/network_route_enum.dart';
import 'package:MyWordBox/view/home/model/home_model.dart';
import 'package:MyWordBox/view/home/service/IHomeService.dart';
import 'package:vexana/vexana.dart';

class HomeService extends IHomeService with ServiceHelper {
  HomeService(INetworkManager manager, GlobalKey<ScaffoldState> scaffoldyKey)
      : super(manager, scaffoldyKey);

  @override
  Future<List<HomeModel>> fetchMenuList() async {
    final response = await manager.fetch<HomeModel, List<HomeModel>>(
        NetworkRoutes.HOME.rawValue + ".json",
        parseModel: HomeModel(),
        method: RequestType.GET);
    showMessage(scaffoldyKey, response.error);
    return response.data;
  }
}
