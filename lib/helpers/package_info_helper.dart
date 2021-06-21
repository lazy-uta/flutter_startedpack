import 'package:package_info/package_info.dart';

class PackageInfoHelper {
  factory PackageInfoHelper() {
    return _mainPackageInfoHelper;
  }

  PackageInfoHelper._internal();

  static final PackageInfoHelper _mainPackageInfoHelper =
      PackageInfoHelper._internal();

  Future<String> getVersion() async {
    final PackageInfo _packageInfo = await PackageInfo.fromPlatform();
    return _packageInfo.version;
  }
}
