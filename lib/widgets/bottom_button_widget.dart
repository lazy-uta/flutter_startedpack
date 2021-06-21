import 'package:flutter/material.dart';
import 'package:startedpack/commons/color_data.dart';
import 'package:startedpack/commons/size_data.dart';
import 'package:startedpack/widgets/action_button_fill_widget.dart';

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget({
    @required this.context,
    @required this.onPress,
    @required this.buttonText,
    this.isDisabled = false,
    Key key,
  }) : super(key: key);

  final BuildContext context;
  final VoidCallback onPress;
  final String buttonText;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      height: MediaQuery.of(context).size.height / 9.0,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorData.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: ColorData.grey25.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(2, -1),
          ),
        ],
      ),
      child: ActionButtonFillWidget(
        height: SizeData.buttonHeight48,
        width: double.infinity,
        onPressed: onPress,
        text: buttonText,
        textStyle: const TextStyle(
          color: ColorData.primaryLight,
          fontSize: SizeData.fontSize16,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
        ),
        fillColor: isDisabled ? ColorData.greyCA : ColorData.green18,
      ),
    );
  }
}
