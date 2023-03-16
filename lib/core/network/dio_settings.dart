import 'package:dio/dio.dart';

class DioSetting {
  final dio = Dio(
    BaseOptions(
        baseUrl: 'https://0f35-158-181-129-169.eu.ngrok.io',
        receiveTimeout: const Duration(seconds: 8),
        connectTimeout: const Duration(seconds: 5)),
  );


  Future<Response<T>> getFixed<T>(String path) async {
    final options = Options(headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    });
    return dio.get(path, options: options);
  }

  Future<Response<T>> postFixed<T>(String path, {data}) async {
    final options = Options(headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    });
    return dio.post(path, options: options,data: data);
  }
}