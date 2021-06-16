import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:startedpack/commons/constant_data.dart';
import 'package:startedpack/controllers/hive_controller.dart';

class SplashController extends GetxController {
  final HiveController _hiveController = Get.find<HiveController>();

  Future<Timer> loadData() async {
    return Timer(const Duration(seconds: 3), onDoneLoading);
  }

  void onDoneLoading() {
    _hiveController.setKodeDesa('9999999999');

    if (_hiveController.getIsLoggedIn() ?? false) {
      Get.offNamed(ConstantData.mainBottomNavigationWithFabRoute);
    } else {
      Get.offNamed(ConstantData.mainChooseAccountRoute);
    }
  }

  @override
  void onInit() {
    loadData();
    super.onInit();
  }
}
