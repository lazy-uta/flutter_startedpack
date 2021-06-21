import 'package:flutter/material.dart';
import 'package:startedpack/commons/color_data.dart';

class CardInputWidget extends StatelessWidget {
  const CardInputWidget({
    @required this.onChange,
    @required this.onSaved,
    @required this.validator,
    @required this.focusNode,
    @required this.icon,
    @required this.textInputAction,
    @required this.textInputType,
    @required this.labelText,
    @required this.maxLeght,
    @required this.nextFocusNode,
    Key key,
    this.shadowColor = ColorData.greyEE,
    this.blurRadius = 0.0,
    this.backgroundIcon = ColorData.blue01,
    this.iconColor = ColorData.blue01,
    this.textStyle,
    this.obsecure = false,
    this.textEditingController,
    this.isNameField = false,
  }) : super(key: key);

  final Function(String) onChange, onSaved;
  final String Function(String) validator;
  final FocusNode focusNode, nextFocusNode;
  final int maxLeght;
  final double blurRadius;
  final Color shadowColor, backgroundIcon, iconColor;
  final IconData icon;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final String labelText;
  final TextStyle textStyle;
  final bool obsecure, isNameField;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shadowColor: ColorData.greyBD,
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: shadowColor,
                blurRadius: blurRadius,
              )
            ],
          ),
          child: CircleAvatar(
            backgroundColor: backgroundIcon,
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
        title: TextFormField(
          textCapitalization:
              isNameField ? TextCapitalization.words : TextCapitalization.none,
          controller: textEditingController,
          obscuringCharacter: '*',
          obscureText: obsecure,
          maxLength: maxLeght,
          focusNode: focusNode,
          validator: validator,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          decoration: InputDecoration(
            counterText: '',
            border: InputBorder.none,
            labelText: labelText,
            labelStyle: textStyle,
          ),
          onChanged: (value) {
            onChange(value);
            if (value.length == maxLeght) {
              focusNode.unfocus();
              FocusScope.of(context).requestFocus(
                nextFocusNode,
              );
            }
          },
          onSaved: onSaved,
        ),
      ),
    );
  }
}
