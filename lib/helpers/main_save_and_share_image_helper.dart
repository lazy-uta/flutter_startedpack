import 'dart:typed_data';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share/share.dart';
import 'package:startedpack/commons/color_data.dart';
import 'package:startedpack/commons/size_data.dart';
import 'package:startedpack/commons/text_data.dart';

class MainSaveAndShareImageHelper {
  factory MainSaveAndShareImageHelper() {
    return _mainSaveAndShareImageHelper;
  }

  MainSaveAndShareImageHelper._internal();

  static final MainSaveAndShareImageHelper _mainSaveAndShareImageHelper =
      MainSaveAndShareImageHelper._internal();

  Future<void> saveOrShareImage(
      bool isSave, ScreenshotController screenshotController) async {
    final Uint8List _capturedImage = await screenshotController.capture();
    final ts = DateTime.now().microsecondsSinceEpoch.toString();

    if (await Permission.storage.status.isGranted) {
      final _result = await ImageGallerySaver.saveImage(
        _capturedImage,
        name: ts,
        quality: 100,
        isReturnImagePathOfIOS: true,
      );

      if (!isSave) {
        final List<String> _splitted = _result.toString().split(' ');
        await Share.shareFiles(
          [_splitted[1].substring(6, _splitted[1].length - 1)],
        );
      }

      if (isSave) {
        Fluttertoast.showToast(
          msg: TextData.textSavedToGallerySuccessfully,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: ColorData.black.withOpacity(0.5),
          textColor: ColorData.primaryLight,
          fontSize: SizeData.fontSize16,
        );
      }
    } else {
      if (await Permission.storage.request().isDenied ||
          await Permission.storage.request().isGranted) {
        saveOrShareImage(isSave, screenshotController);
      }
    }
  }
}
