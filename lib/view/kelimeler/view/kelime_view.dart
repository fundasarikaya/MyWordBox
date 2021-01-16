import 'package:MyWordBox/core/base/view/base_widget.dart';
import 'package:MyWordBox/core/constants/navigation/navigation_constants.dart';
import 'package:MyWordBox/view/kelimeler/model/kelime_model.dart';
import 'package:MyWordBox/view/kelimeler/viewmodel/kelime_view_model.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class KelimeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<KelimeViewModel>(
      viewModel: KelimeViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        model.getListAll();
      },
      onPageBuilder: (BuildContext context, KelimeViewModel viewModel) =>
          Scaffold(
        appBar: buildAppBar(context),
        body: Observer(builder: (_) {
          return viewModel.isLoading
              ? buildCenter()
              : viewModel.kelimeModels == null || viewModel.kelimeModels.isEmpty
                  ? Center(
                      child: Text("Not Found"),
                    )
                  : buildListViewMenus(viewModel, context);
        }),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightBlueAccent[100],
      title: Text("Kelimeler"),
      elevation: 10,
      actions: [
        IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(NavigationConstants.KELIME_EKLE_VIEW);
            })
      ],
    );
  }

  Center buildCenter() => Center(child: CircularProgressIndicator());

  ListView buildListViewMenus(KelimeViewModel viewModel, BuildContext context) {
    return ListView(
      children: [buildListBottom(viewModel)],
    );
  }

  ListView buildListBottom(KelimeViewModel viewModel) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => FlipCard(
        direction: FlipDirection.VERTICAL,
        front: KelimeCard(
          kelime: viewModel.kelimeModels[index].kelimeEN,
          ezberlendi: viewModel.kelimeModels[index].ezberlendi,
        ),
        back: KelimeDetailCard(
          title: viewModel.kelimeModels[index].kelimeTR,
          color: Colors.orange,
        ),
      ),
      itemCount: viewModel.kelimeModels.length,
      shrinkWrap: true,
    );
  }
}

class KelimeCard extends StatelessWidget {
  final String kelime;
  final bool ezberlendi;
  const KelimeCard({Key key, this.kelime, this.ezberlendi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text(
                  kelime,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Icon(
                Icons.circle,
                color: ezberlendi == true ? Colors.green : Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class KelimeDetailCard extends StatelessWidget {
  final String title;
  final MaterialColor color;
  KelimeDetailCard({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 10,
      child: Container(
        height: 80,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
