import 'package:flutter/material.dart';
import 'package:startedpack/commons/color_data.dart';
import 'package:startedpack/commons/size_data.dart';
import 'package:startedpack/widgets/custom_text_widget.dart';

class MainActionButtonOutlineWidget extends StatelessWidget {
  const MainActionButtonOutlineWidget({
    @required this.onPressed,
    @required this.text,
    this.textColor = ColorData.green18,
    this.borderColor = ColorData.green18,
    this.alignment = Alignment.center,
    this.borderRadius = 5.0,
    this.isText = true,
    Key key,
  }) : super(key: key);

  final Function onPressed;
  final String text;
  final Color textColor, borderColor;
  final Alignment alignment;
  final double borderRadius;
  final bool isText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: 45.0,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        decoration: BoxDecoration(
          color: ColorData.white,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: Align(
          alignment: alignment,
          child: isText
              ? MainCustomTextWidget(
                  text: text,
                  color: textColor,
                  fontSize: SizeData.fontSize16,
                  fontWeight: FontWeight.bold,
                )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.camera_alt_outlined,
                      color: ColorData.green18,
                      size: 25.0,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    MainCustomTextWidget(
                      text: text,
                      color: textColor,
                      fontSize: SizeData.fontSize16,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
