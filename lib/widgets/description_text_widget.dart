import 'package:flutter/material.dart';

class DescriptionTextWidget extends StatelessWidget {
  const DescriptionTextWidget({
    @required this.textDescription,
    @required this.maxLines,
    @required this.textAlign,
    @required this.textColor,
    @required this.textSize,
    Key key,
    this.textWeight = FontWeight.bold,
  }) : super(key: key);

  final String textDescription;
  final int maxLines;
  final TextAlign textAlign;
  final FontWeight textWeight;
  final Color textColor;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      textDescription,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      textDirection: TextDirection.ltr,
      style: TextStyle(
        color: textColor,
        fontSize: textSize,
        fontStyle: FontStyle.normal,
        fontWeight: textWeight,
        height: 1.4,
      ),
    );
  }
}
