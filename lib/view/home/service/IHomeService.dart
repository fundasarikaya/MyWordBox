import 'package:flutter/material.dart';
import 'package:MyWordBox/view/home/model/home_model.dart';
import 'package:vexana/vexana.dart';

abstract class IHomeService {
  final INetworkManager manager;
  final GlobalKey<ScaffoldState> scaffoldyKey;

  IHomeService(this.manager, this.scaffoldyKey);

  Future<List<HomeModel>> fetchMenuList();
}
