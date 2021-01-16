import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:MyWordBox/core/base/view/base_widget.dart';
import 'package:MyWordBox/core/init/lang/locale_keys.g.dart';
import 'package:MyWordBox/view/_product/_widgets/card/home_card.dart';
import 'package:MyWordBox/view/home/viewmodel/home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
        viewModel: HomeViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
          model.getListAll();
        },
        onPageBuilder: (BuildContext context, HomeViewModel viewModel) =>
            Scaffold(
              key: viewModel.scaffoldKey,
              appBar: buildAppBar(),
              body: DefaultTabController(
                length: 2,
                child: Observer(builder: (_) {
                  return viewModel.isLoading
                      ? buildCenter()
                      : viewModel.homeModels == null ||
                              viewModel.homeModels.isEmpty
                          ? Center(
                              child: Text("Not Found"),
                            )
                          : buildListViewMenus(viewModel, context);
                }),
              ),
            ));
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.lightBlueAccent[100],
      title: Text("Menü"),
      elevation: 10,
    );
  }

  Center buildCenter() => Center(child: CircularProgressIndicator());

  ListView buildListViewMenus(HomeViewModel viewModel, BuildContext context) {
    return ListView(
      children: [buildListBottom(viewModel)],
    );
  }

  ListView buildListBottom(HomeViewModel viewModel) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => InkWell(
        onTap: () =>
            Navigator.of(context).pushNamed(viewModel.homeModels[index].path),
        child: Card(
          elevation: 10,
          color: Colors.yellow[300],
          child: Container(
            alignment: AlignmentDirectional.center,
            height: 150,
            width: 150,
            child: Text(
              viewModel.homeModels[index].name,
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
          ),
        ),
      ),
      itemCount: viewModel.homeModels.length,
      shrinkWrap: true,
    );
  }

  Observer buildObserver(HomeViewModel viewModel, int index) {
    return Observer(builder: (_) {
      return HomeCard(
        model: viewModel.homeModels[index],
        isLiked: viewModel.likeItems.contains(viewModel.homeModels[index].id),
        onPressedLikeId: (id) {
          viewModel.onLikeItemPressed(id);
        },
      );
    });
  }
}
