import 'package:startedpack/commons/constant_data.dart';
import 'package:startedpack/commons/text_data.dart';
import 'package:startedpack/helpers/main_show_pop_up_dialog_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class MainUrlLauncherHelper {
  factory MainUrlLauncherHelper() {
    return _mainUrlLauncherHelper;
  }

  MainUrlLauncherHelper._internal();

  static final MainUrlLauncherHelper _mainUrlLauncherHelper =
      MainUrlLauncherHelper._internal();

  final MainShowPopUpDialogHelper _showPopUpDialogHelper =
      MainShowPopUpDialogHelper();

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
