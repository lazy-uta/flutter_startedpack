import 'package:package_info/package_info.dart';

class MainPackageInfoHelper {
  factory MainPackageInfoHelper() {
    return _mainPackageInfoHelper;
  }

  MainPackageInfoHelper._internal();

  static final MainPackageInfoHelper _mainPackageInfoHelper =
      MainPackageInfoHelper._internal();

  Future<String> getVersion() async {
    final PackageInfo _packageInfo = await PackageInfo.fromPlatform();
    return _packageInfo.version;
  }
}
