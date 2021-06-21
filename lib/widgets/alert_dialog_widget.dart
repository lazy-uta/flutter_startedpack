import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:startedpack/commons/color_data.dart';

class AlertDialogWidget {
  static void createAlertDialog(
    BuildContext _context,
    String _textTitle,
    String _textDescription,
    String _textButton, {
    AlertType alertType = AlertType.error,
    bool isBack = true,
    bool isDoubleButton = false,
    String secondTextButton,
    Function onPressed,
  }) {
    final AlertStyle _alertStyle = AlertStyle(
      animationType: AnimationType.fromTop,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      titleStyle: const TextStyle(
        color: ColorData.grey,
        fontSize: 20.0,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
      ),
      descStyle: const TextStyle(
        color: ColorData.grey,
        fontSize: 15.0,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      ),
      backgroundColor: ColorData.white,
      animationDuration: const Duration(milliseconds: 400),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: const BorderSide(
          color: ColorData.grey,
        ),
      ),
    );

    List<DialogButton> _singleButton() {
      return [
        DialogButton(
          onPressed: isBack
              ? () {
                  Get.back();
                }
              : () {
                  onPressed();
                },
          color: ColorData.green18,
          radius: BorderRadius.circular(8.0),
          child: Text(
            _textButton,
            style: const TextStyle(
              color: ColorData.white,
              fontSize: 16.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ];
    }

    List<DialogButton> _doubleButton() {
      return [
        DialogButton(
          onPressed: () {
            onPressed();
          },
          color: ColorData.white,
          radius: BorderRadius.circular(8.0),
          child: Text(
            _textButton,
            style: const TextStyle(
              color: ColorData.grey,
              fontSize: 16.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        DialogButton(
          onPressed: () {
            Get.back();
          },
          color: ColorData.green18,
          radius: BorderRadius.circular(8.0),
          child: Text(
            secondTextButton,
            style: const TextStyle(
              color: ColorData.white,
              fontSize: 16.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ];
    }

    Alert(
      context: _context,
      style: _alertStyle,
      type: alertType,
      title: _textTitle,
      desc: _textDescription,
      onWillPopActive: true,
      buttons: isDoubleButton ? _doubleButton() : _singleButton(),
    ).show();
  }
}
