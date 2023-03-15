import 'package:dio/dio.dart';

class DioSetting {
  final dio = Dio(
    BaseOptions(
        baseUrl: 'https://4755-213-109-66-143.in.ngrok.io/',
        receiveTimeout: const Duration(seconds: 8),
        connectTimeout: const Duration(seconds: 5)),
  );


  Future<Response<T>> getFixed<T>(String path) async {
    final options = Options(headers: {
      'Accept': 'application/json ',
      'Content-Type': 'application/json ',
    });
    return dio.get(path, options: options);
  }
}