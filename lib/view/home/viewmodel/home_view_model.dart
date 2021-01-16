import 'package:flutter/material.dart';
import 'package:MyWordBox/core/base/model/base_view_model.dart';
import 'package:MyWordBox/view/_product/_utilty/decoration_helper.dart';
import 'package:MyWordBox/view/home/model/home_model.dart';
import 'package:MyWordBox/view/home/service/IHomeService.dart';
import 'package:MyWordBox/view/home/service/home_service.dart';
import 'package:mobx/mobx.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  DecorationHelper helper;
  IHomeService homeService;

  @observable
  List<String> likeItems = []; //Gerekli mi bak

  @action
  void onLikeItemPressed(String id) {
    if (likeItems.contains(id)) {
      likeItems.remove(id);
    } else {
      likeItems.add(id);
    }

    likeItems = likeItems;
  }

  @observable
  List<HomeModel> homeModels = [];

  @computed
  HomeModel get sliderHome => homeModels.first; //Gerekli mi bak

  @observable
  bool isLoading = false;

  void init() {
    helper = DecorationHelper(context: context);
    homeService = HomeService(vexanaManager.networkManager, scaffoldKey);
  }

  @action
  void _changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> getListAll() async {
    _changeLoading();
    homeModels = await homeService.fetchMenuList();

    _changeLoading();
  }
}
