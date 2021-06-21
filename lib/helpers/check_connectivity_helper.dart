import 'package:connectivity/connectivity.dart';

class CheckConnectivityHelper {
  factory CheckConnectivityHelper() {
    return _mainCheckConnectivityHelper;
  }

  CheckConnectivityHelper._internal();

  static final CheckConnectivityHelper _mainCheckConnectivityHelper =
      CheckConnectivityHelper._internal();

  Future<bool> checkConnectivity() async {
    final _connectivityResult = await Connectivity().checkConnectivity();
    return _connectivityResult == ConnectivityResult.mobile ||
        _connectivityResult == ConnectivityResult.wifi;
  }
}
