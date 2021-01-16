import 'package:MyWordBox/core/base/model/base_view_model.dart';
import 'package:MyWordBox/view/_product/_utilty/decoration_helper.dart';
import 'package:MyWordBox/view/kelimeler/model/kelime_model.dart';
import 'package:MyWordBox/view/kelimeler/service/IKelimeService.dart';
import 'package:MyWordBox/view/kelimeler/service/kelime_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'kelime_view_model.g.dart';

class KelimeViewModel = _KelimeViewModelBase with _$KelimeViewModel;

abstract class _KelimeViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  DecorationHelper helper;
  IKelimeService kelimeService;

  @observable
  List<KelimeModel> kelimeModels = [];

  @observable
  bool isLoading = false;

  void init() {
    helper = DecorationHelper(context: context);
    kelimeService = KelimeService(vexanaManager.networkManager, scaffoldKey);
  }

  @action
  void _changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> getListAll() async {
    _changeLoading();
    kelimeModels = await kelimeService.fetchKelimeList();

    _changeLoading();
  }
}
