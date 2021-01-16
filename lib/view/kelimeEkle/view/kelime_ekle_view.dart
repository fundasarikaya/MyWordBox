import 'package:MyWordBox/core/base/view/base_widget.dart';
import 'package:MyWordBox/core/extension/context_extension.dart';
import 'package:MyWordBox/core/init/lang/locale_keys.g.dart';
import 'package:MyWordBox/view/kelimeEkle/viewmodel/kelime_ekle_view_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class KelimeEkleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<KelimeEkleViewModel>(
      viewModel: KelimeEkleViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, KelimeEkleViewModel value) =>
          Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[100],
          title: Text("Kelime Ekle"),
          elevation: 10,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: buildForm(value, context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Form buildForm(KelimeEkleViewModel value, BuildContext context) {
    return Form(
      key: value.formState,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          buildTextFormFieldWordEN(context, value),
          buildTextFormFieldWordTR(context, value),
          SizedBox(
            height: 15,
          ),
          buildRaisedButtonLogin(context, value),
        ],
      ),
    );
  }

  TextFormField buildTextFormFieldWordEN(
      BuildContext context, KelimeEkleViewModel viewModel) {
    return TextFormField(
      controller: viewModel.kelimeENController,
      decoration: InputDecoration(
        labelText: LocaleKeys.kelimeEkle_KelimeEN.tr(),
        labelStyle: context.textTheme.subtitle1,
        icon: Icon(
          Icons.flag,
          size: 40,
          color: Colors.blue,
        ),
      ),
    );
  }

  TextFormField buildTextFormFieldWordTR(
      BuildContext context, KelimeEkleViewModel viewModel) {
    return TextFormField(
      controller: viewModel.kelimeTRController,
      decoration: InputDecoration(
        labelText: LocaleKeys.kelimeEkle_KelimeTR.tr(),
        labelStyle: context.textTheme.subtitle1,
        icon: Icon(
          Icons.outlined_flag,
          size: 40,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget buildRaisedButtonLogin(
      BuildContext context, KelimeEkleViewModel viewModel) {
    return Observer(builder: (_) {
      return RaisedButton(
        onPressed: viewModel.isLoading
            ? null
            : () {
                viewModel.fetchKelimeEkleSevice();
              },
        shape: StadiumBorder(),
        child: Center(
            child: Text(LocaleKeys.buttons_BtnEkle.tr(),
                style: context.textTheme.headline5)),
        color: context.colors.onError,
      );
    });
  }
}
