import 'package:flutter/material.dart';

class MainActionButtonFillWidget extends StatelessWidget {
  const MainActionButtonFillWidget(
      {@required this.onPressed,
      @required this.text,
      Key key,
      this.fillColor,
      this.disabledColor,
      this.width,
      this.height,
      this.paddingVertical = 2.0,
      this.paddingHorizontal = 2.0,
      this.roundRadius = 13.0,
      this.isDisabled = false,
      this.textStyle,
      this.icon,
      this.marginIcon = 4.0})
      : super(key: key);

  final Function onPressed;
  final String text;
  final Color fillColor;
  final Color disabledColor;
  final double width;
  final double height;
  final double paddingVertical;
  final double paddingHorizontal;
  final double roundRadius;
  final bool isDisabled;
  final TextStyle textStyle;
  final IconData icon;
  final double marginIcon;

  @override
  Widget build(BuildContext context) {
    final isDisabled2 = isDisabled;
    return Container(
      width: width,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(roundRadius),
            ),
          ),
          backgroundColor: fillColor ?? Theme.of(context).accentColor,
          onSurface: disabledColor ?? Theme.of(context).primaryColorLight,
          padding: EdgeInsets.symmetric(
            horizontal: paddingHorizontal,
            vertical: paddingVertical,
          ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: () {
          if (!isDisabled2) {
            onPressed();
          }
        },
        child: icon != null
            ? Row(
                children: <Widget>[
                  Icon(
                    icon,
                    color: isDisabled ? disabledColor : fillColor,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: marginIcon),
                    child: Text(
                      text,
                      style: textStyle ?? Theme.of(context).textTheme.button,
                    ),
                  ),
                ],
              )
            : Text(
                text,
                style: textStyle ?? Theme.of(context).textTheme.button,
              ),
      ),
    );
  }
}
