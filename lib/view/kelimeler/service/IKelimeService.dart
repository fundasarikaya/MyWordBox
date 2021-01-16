import 'package:MyWordBox/view/kelimeler/model/kelime_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

abstract class IKelimeService {
  final INetworkManager manager;
  final GlobalKey<ScaffoldState> scaffoldyKey;

  IKelimeService(this.manager, this.scaffoldyKey);

  Future<List<KelimeModel>> fetchKelimeList();
}
