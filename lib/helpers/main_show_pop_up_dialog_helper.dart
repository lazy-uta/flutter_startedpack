import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:startedpack/commons/color_data.dart';
import 'package:startedpack/commons/text_data.dart';

class MainShowPopUpDialogHelper {
  factory MainShowPopUpDialogHelper() {
    return _mainShowPopUpDialogHelper;
  }

  MainShowPopUpDialogHelper._internal();

  static final MainShowPopUpDialogHelper _mainShowPopUpDialogHelper =
      MainShowPopUpDialogHelper._internal();

  void showPopUpDialog({
    String title,
    String content,
    String textConfirm = TextData.textOk,
    bool isWithButton = true,
    bool isSingleBack = true,
    Function() onConfirm,
  }) {
    isWithButton
        ? Get.defaultDialog(
            title: title,
            titleStyle: const TextStyle(
              color: ColorData.grey42,
              fontSize: 20.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
            middleText: content,
            middleTextStyle: const TextStyle(
              color: ColorData.grey,
              fontSize: 15.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
            backgroundColor: ColorData.white,
            barrierDismissible: false,
            onWillPop: () async => false,
            radius: 8.0,
            buttonColor: ColorData.greyEE,
            textConfirm: textConfirm,
            confirmTextColor: ColorData.grey42,
            onConfirm: onConfirm ??
                () {
                  if (isSingleBack) {
                    Get.back();
                  } else {
                    Get.back();
                    Get.back();
                  }
                },
          )
        : Get.defaultDialog(
            title: title,
            titleStyle: const TextStyle(
              color: ColorData.grey42,
              fontSize: 20.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
            middleText: content,
            middleTextStyle: const TextStyle(
              color: ColorData.grey,
              fontSize: 15.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
            backgroundColor: ColorData.white,
            barrierDismissible: false,
            onWillPop: () async => false,
            radius: 8.0,
          );
  }
}
