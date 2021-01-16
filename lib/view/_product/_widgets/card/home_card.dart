import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:MyWordBox/view/home/model/home_model.dart';
import 'package:kartal/kartal.dart';

class HomeCard extends StatelessWidget {
  final HomeModel model;
  final bool isLiked;
  final Function(String id) onPressedLikeId;

  const HomeCard(
      {Key key,
      @required this.model,
      this.onPressedLikeId,
      this.isLiked = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(model.name),
          trailing: buildIconButton(),
        ),
        context.emptySizedHeightBoxLow,
        buildWrap(context)
      ],
    );
  }

  Widget buildWrap(BuildContext context) {
    return Column(
      children: [
        AutoSizeText(model.name,
            style: context.textTheme.headline6
                .copyWith(fontWeight: FontWeight.w600),
            maxLines: 1),
      ],
    );
  }

  IconButton buildIconButton() {
    return IconButton(
        icon: Icon(
          Icons.favorite,
          color: isLiked ? Colors.pink : Colors.black12,
        ),
        onPressed: () {
          onPressedLikeId(model.id.toString());
        });
  }
}
