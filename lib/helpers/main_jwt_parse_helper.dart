import 'dart:convert';

import 'package:startedpack/models/main_jwt_parse_model.dart';

class MainJwtParseHelper {
  factory MainJwtParseHelper() {
    return _mainJwtParseHelper;
  }

  MainJwtParseHelper._internal();

  static final MainJwtParseHelper _mainJwtParseHelper =
      MainJwtParseHelper._internal();

  MainJwtParseModel parseJwt(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw Exception('invalid token');
    }

    final payload = _decodeBase64(parts[1]);
    final MainJwtParseModel _result = MainJwtParseModel.fromJson(
        json.decode(payload) as Map<String, dynamic>);
    return _result;
  }

  String _decodeBase64(String str) {
    String output = str.replaceAll('-', '+').replaceAll('_', '/');

    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
        break;
      case 3:
        output += '=';
        break;
      default:
        throw Exception('Illegal base64url string!"');
    }

    return utf8.decode(base64Url.decode(output));
  }
}
