import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';
import 'package:startedpack/commons/text_data.dart';
import 'package:startedpack/helpers/main_show_pop_up_dialog_helper.dart';

class AppController extends GetxController {
  final Connectivity _connectivity = Connectivity();
  final MainShowPopUpDialogHelper _showPopUpDialogHelper =
      MainShowPopUpDialogHelper();
  bool isAppLoading = false;
  int backButtonPressedCount = 0, _counter = 0;

  @override
  void onInit() {
    super.onInit();
    _connectivity.onConnectivityChanged.listen(
      (event) {
        if (event == ConnectivityResult.none) {
          _showPopUpDialogHelper.showPopUpDialog(
            title: TextData.textWarning,
            content: TextData.textNoInternet,
            isWithButton: false,
          );
        } else if (event == ConnectivityResult.mobile ||
            event == ConnectivityResult.wifi) {
          Get.back();
        }
      },
    );
  }

  void setIsAppLoading(bool isAppLoading) {
    this.isAppLoading = isAppLoading;
    update();
  }

  void startCountDownTimer() {
    const Duration _oneSec = Duration(seconds: 1);
    Timer.periodic(
      _oneSec,
      (Timer timer) {
        if (_counter == 10) {
          timer.cancel();
          _counter = 0;
          backButtonPressedCount = 0;
        } else {
          _counter++;
        }
      },
    );
  }
}
