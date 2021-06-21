import 'package:startedpack/commons/constant_data.dart';
import 'package:startedpack/commons/text_data.dart';
import 'package:startedpack/helpers/show_pop_up_dialog_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherHelper {
  factory UrlLauncherHelper() {
    return _mainUrlLauncherHelper;
  }

  UrlLauncherHelper._internal();

  static final UrlLauncherHelper _mainUrlLauncherHelper =
      UrlLauncherHelper._internal();

  final ShowPopUpDialogHelper _showPopUpDialogHelper = ShowPopUpDialogHelper();

  Future<void> launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        enableJavaScript: true,
        forceWebView: true,
      );
    } else {
      _showPopUpDialogHelper.showPopUpDialog(
        title: TextData.textSorry,
        content: ConstantData.somethingWentWrong,
      );
    }
  }
}
