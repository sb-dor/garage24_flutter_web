import 'package:dio/dio.dart';

abstract class APISettings {
  static const String _mainUrl = 'http://192.168.100.244:8000/api';

  static late Dio dio;

  static Future<Map<String, String>> _headers() async {
    return <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      // 'Authorization': "Bearer "
    };
  }

  static Future<void> init() async {
    dio = Dio()
      ..options = BaseOptions(
        baseUrl: _mainUrl,
        headers: await _headers(),
        connectTimeout: const Duration(seconds: 30),
      );
  }
}
