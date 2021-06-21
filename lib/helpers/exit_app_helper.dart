import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:startedpack/commons/color_data.dart';
import 'package:startedpack/commons/size_data.dart';
import 'package:startedpack/commons/text_data.dart';
import 'package:startedpack/controllers/app_controller.dart';

class ExitAppHelper {
  factory ExitAppHelper() {
    return _mainExitAppHelper;
  }

  ExitAppHelper._internal();

  static final ExitAppHelper _mainExitAppHelper = ExitAppHelper._internal();

  bool exitApp(AppController mainAppController) {
    if (mainAppController.backButtonPressedCount != 1) {
      mainAppController.backButtonPressedCount++;
      mainAppController.startCountDownTimer();
      Fluttertoast.showToast(
        msg: TextData.textExitApp,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: ColorData.black.withOpacity(0.5),
        textColor: ColorData.primaryLight,
        fontSize: SizeData.fontSize16,
      );
    } else {
      mainAppController.backButtonPressedCount = 0;
      Fluttertoast.cancel();
      exit(0);
    }
    return false;
  }
}
