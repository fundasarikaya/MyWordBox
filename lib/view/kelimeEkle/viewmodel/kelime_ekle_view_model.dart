import 'package:MyWordBox/core/base/model/base_view_model.dart';
import 'package:MyWordBox/core/init/network/vexana_manager.dart';
import 'package:MyWordBox/view/kelimeEkle/model/kelime_ekle_model.dart';
import 'package:MyWordBox/view/kelimeEkle/service/IKelimeEkleService.dart';
import 'package:MyWordBox/view/kelimeEkle/service/kelime_ekle_service.dart';
import 'package:MyWordBox/view/kelimeler/service/IKelimeService.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'kelime_ekle_view_model.g.dart';

class KelimeEkleViewModel = _KelimeEkleViewModelBase with _$KelimeEkleViewModel;

abstract class _KelimeEkleViewModelBase with Store, BaseViewModel {
  GlobalKey<FormState> formState = GlobalKey();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  IKelimeEkleService kelimeEkleService;

  TextEditingController kelimeENController;
  TextEditingController kelimeTRController;

  void setContext(BuildContext context) => this.context = context;
  void init() {
    kelimeEkleService =
        KelimeEkleService(VexanaManager.instance.networkManager);
    kelimeENController = TextEditingController();
    kelimeTRController = TextEditingController();
  }

  @observable
  bool isLoading = false;

  @action
  Future<void> fetchKelimeEkleSevice() async {
    isLoadingChange();
    if (formState.currentState.validate()) {
      final response = await kelimeEkleService.fetchKelimeEkleSevice(
          KelimeEkleModel(
              kelimeEN: kelimeENController.text,
              kelimeTR: kelimeTRController.text,
              ezberlendi: false,
              kullaniciID: 0));
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
