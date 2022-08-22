import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://evening-badlands-73488.herokuapp.com/api/',
        receiveDataWhenStatusError: true,
      ),
    );
    return;
  }

  static Future<Response> getDate({
    required String url,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token ?? '',
    };
    return dio!.get(url, queryParameters: query);
  }

  static Future<Response> postDate({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    String lang = 'en',
    String? token = '',
  }) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token,
    };
    return dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
