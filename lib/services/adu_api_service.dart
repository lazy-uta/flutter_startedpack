// import 'dart:convert';

// import 'package:dio/dio.dart';

// class AduApiService {
//   factory AduApiService() {
//     return _aduApiService;
//   }

//   AduApiService._internal();

//   static final AduApiService _aduApiService = AduApiService._internal();

//   final MainDioHelper _mainDioHelper = MainDioHelper();

//   Future<dynamic> getAduMenu() async {
//     try {
//       final response = await _mainDioHelper.getDio().get(
//             MainConstantData.getMenuAdu,
//           );

//       if (response.statusCode == 200) {
//         final AduMenuModel _result =
//             AduMenuModel.fromJson(response.data as Map<String, dynamic>);
//         if (_result.meta.success) {
//           return _result;
//         } else {
//           return _result.meta.message;
//         }
//       }
//     } on DioError catch (_) {
//       return MainConstantData.somethingWentWrong;
//     }
//   }

//   Future<dynamic> getHistory(String cif) async {
//     try {
//       final response = await _mainDioHelper
//           .getDio()
//           .get('${MainConstantData.aduGetHistory}/$cif');

//       if (response.statusCode == 200) {
//         final AduHistoryModel _result =
//             AduHistoryModel.fromJson(response.data as Map<String, dynamic>);
//         if (_result.meta.success) {
//           return _result;
//         } else {
//           return _result.meta.message;
//         }
//       }
//     } on DioError catch (e) {
//       throw e.error;
//     }
//   }

//   Future<dynamic> postSendReport(String url, Map<String, dynamic> body) async {
//     try {
//       final FormData formData = FormData.fromMap(body);
//       final response = await _mainDioHelper.getDio().post(url, data: formData);

//       if (response.statusCode == 200) {
//         final AduAduanModel result =
//             AduAduanModel.fromJson(response.data as Map<String, dynamic>);
//         if (result.meta.success) {
//           return result;
//         } else {
//           return result.meta.message;
//         }
//       } else {
//         final AduAduanModel result = AduAduanModel.fromJson(
//             json.decode(response.data.toString()) as Map<String, dynamic>);
//         return result;
//       }
//     } on Exception catch (e) {
//       return Future<AduAduanModel>.error(e);
//     }
//   }
// }
