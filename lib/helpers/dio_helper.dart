import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'package:startedpack/controllers/hive_controller.dart';

class DioHelper {
  factory DioHelper() {
    return _mainDioHelper;
  }

  DioHelper._internal();

  static final DioHelper _mainDioHelper = DioHelper._internal();

  final HiveController _mainHiveController = Get.find<HiveController>();

  void _addDioLogger(Dio _dio) {
    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        compact: false,
      ),
    );
  }

  Dio getDio() {
    final BaseOptions _option = BaseOptions(
      baseUrl: '',
      connectTimeout: 30000,
      receiveTimeout: 30000,
      contentType: 'application/json',
      headers: {
        'Authorization': _mainHiveController.getToken(),
      },
    );

    final Dio _dio = Dio(_option);
    _addDioLogger(_dio);
    return _dio;
  }
}
