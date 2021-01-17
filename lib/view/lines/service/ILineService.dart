import 'package:MyWordBox/view/lines/model/line_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

abstract class ILineService {
  final INetworkManager manager;
  final GlobalKey<ScaffoldState> scaffoldyKey;

  ILineService(this.manager, this.scaffoldyKey);

  Future<List<LineModel>> fetchLinesList();
}
