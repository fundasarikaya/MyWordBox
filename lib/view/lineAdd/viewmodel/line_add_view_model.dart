import 'package:MyWordBox/core/base/model/base_view_model.dart';
import 'package:MyWordBox/core/init/network/vexana_manager.dart';
import 'package:MyWordBox/view/lineAdd/model/line_add_model.dart';
import 'package:MyWordBox/view/lineAdd/service/ILineAddService.dart';
import 'package:MyWordBox/view/lineAdd/service/line_add_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'line_add_view_model.g.dart';

class LineAddViewModel = _LineAddViewModelBase with _$LineAddViewModel;

abstract class _LineAddViewModelBase with Store, BaseViewModel {
  GlobalKey<FormState> formState = GlobalKey();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  ILineAddService kelimeEkleService;

  TextEditingController kelimeENController;
  TextEditingController kelimeTRController;

  void setContext(BuildContext context) => this.context = context;
  void init() {
    kelimeEkleService = LineAddService(VexanaManager.instance.networkManager);
    kelimeENController = TextEditingController();
    kelimeTRController = TextEditingController();
  }

  @observable
  bool isLoading = false;

  @action
  Future<void> fetchLineAddSevice() async {
    isLoadingChange();
    if (formState.currentState.validate()) {
      final response = await kelimeEkleService.fetchlineEkleSevice(LineAddModel(
          english: kelimeENController.text,
          turkish: kelimeTRController.text,
          memorized: false,
          userId: 0));
      print(response);
      // if (response != null) {
      //   scaffoldState.currentState
      //       .showSnackBar(SnackBar(content: Text("İşlem başarılı!")));
      // }
    }
    isLoadingChange();
  }

  @action
  void isLoadingChange() {
    isLoading = !isLoading;
  }
}
