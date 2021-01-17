import 'package:MyWordBox/core/base/model/base_view_model.dart';
import 'package:MyWordBox/view/_product/_utilty/decoration_helper.dart';
import 'package:MyWordBox/view/lines/model/line_model.dart';
import 'package:MyWordBox/view/lines/service/ILineService.dart';
import 'package:MyWordBox/view/lines/service/line_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'lines_view_model.g.dart';

class LinesViewModel = _LinesViewModelBase with _$LinesViewModel;

abstract class _LinesViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) => this.context = context;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  DecorationHelper helper;
  ILineService linesService;

  @observable
  List<LineModel> linesModels = [];

  @observable
  bool isLoading = false;

  void init() {
    helper = DecorationHelper(context: context);
    linesService = LineService(vexanaManager.networkManager, scaffoldKey);
  }

  @action
  void _changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> getListAll() async {
    _changeLoading();
    linesModels = await linesService.fetchLinesList();

    _changeLoading();
  }
}
