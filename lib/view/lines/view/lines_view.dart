import 'package:MyWordBox/core/base/view/base_widget.dart';
import 'package:MyWordBox/core/constants/navigation/navigation_constants.dart';
import 'package:MyWordBox/view/lines/viewmodel/lines_view_model.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LinesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<LinesViewModel>(
      viewModel: LinesViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        model.getListAll();
      },
      onPageBuilder: (BuildContext context, LinesViewModel viewModel) =>
          Scaffold(
        appBar: buildAppBar(context),
        body: Observer(builder: (_) {
          return viewModel.isLoading
              ? buildCenter()
              : viewModel.linesModels == null || viewModel.linesModels.isEmpty
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
      title: Text("Replikler"),
      elevation: 10,
      actions: [
        IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(NavigationConstants.LINE_ADD_VIEW);
            })
      ],
    );
  }

  Center buildCenter() => Center(child: CircularProgressIndicator());

  ListView buildListViewMenus(LinesViewModel viewModel, BuildContext context) {
    return ListView(
      children: [buildListBottom(viewModel)],
    );
  }

  ListView buildListBottom(LinesViewModel viewModel) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => FlipCard(
        direction: FlipDirection.VERTICAL,
        front: LineCard(
          line: viewModel.linesModels[index].english,
          ezberlendi: viewModel.linesModels[index].memorized,
        ),
        back: LineDetailCard(
          title: viewModel.linesModels[index].turkish,
          color: Colors.orange,
        ),
      ),
      itemCount: viewModel.linesModels.length,
      shrinkWrap: true,
    );
  }
}

class LineCard extends StatelessWidget {
  final String line;
  final bool ezberlendi;
  const LineCard({Key key, this.line, this.ezberlendi}) : super(key: key);

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
                  line,
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

class LineDetailCard extends StatelessWidget {
  final String title;
  final MaterialColor color;
  LineDetailCard({this.title, this.color});

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
