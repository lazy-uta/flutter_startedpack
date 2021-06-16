import 'package:flutter/material.dart';
import 'package:startedpack/commons/color_data.dart';

class MainBackButtonWidget extends StatelessWidget {
  const MainBackButtonWidget({
    @required this.backTo,
    this.color = ColorData.white,
    Key key,
  }) : super(key: key);

  final Function backTo;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: color,
      ),
      onPressed: () {
        backTo();
      },
    );
  }
}
