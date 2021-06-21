import 'package:get/get.dart';
import 'package:startedpack/controllers/app_controller.dart';
import 'package:startedpack/controllers/hive_controller.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HiveController(), permanent: true);
    Get.put(AppController(), permanent: true);
  }
}
