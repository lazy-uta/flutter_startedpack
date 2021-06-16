import 'package:flutter/material.dart';

import 'package:permission_handler/permission_handler.dart';
import 'package:startedpack/widgets/alert_dialog_widget.dart';

class MainCekPermissionHelper {
  factory MainCekPermissionHelper() {
    return _mainCekPermissionHelper;
  }

  MainCekPermissionHelper._internal();

  static final MainCekPermissionHelper _mainCekPermissionHelper =
      MainCekPermissionHelper._internal();

  Future askPermissionCamera(BuildContext context) async {
    final status = await Permission.camera.request();
    if (status.isDenied) {
      MainAlertDialogWidget.createAlertDialog(context, 'Izin Kamera Ditolak',
          'Beberapa fitur akan tidak berfungsi', 'OK');
    }
  }

  Future askPermissionMedia(BuildContext context) async {
    final status = await Permission.storage.request();
    if (status.isDenied) {
      MainAlertDialogWidget.createAlertDialog(
          context,
          'Izin akses Media Ditolak',
          'Beberapa akan fitur akan tidak berfungsi',
          'OK');
    }
  }

  Future askPermissionLocation(BuildContext context) async {
    final status = await Permission.locationWhenInUse.request();
    if (status.isDenied) {
      MainAlertDialogWidget.createAlertDialog(context, 'Izin Location Ditolak',
          'Beberapa akan fitur akan tidak berfungsi', 'OK');
    }
  }
}
