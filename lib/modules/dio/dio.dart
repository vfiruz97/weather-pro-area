import 'package:dio/dio.dart';

Dio getDio() {
  Dio dio = Dio(
    BaseOptions(baseUrl: 'https://api.openweathermap.org'),
  );
  dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options, handler) async {
    // Todo
    return handler.next(options);
  }));
  return dio;
}

class RemoteDataSource {
  static returnDioResponse(Response<dynamic> response) {
    switch (response.statusCode) {
      case 200:
        return response.data;
      case 422:
      case 400:
      case 401:
      case 403:
      case 405:
        throw Exception(response.data);
      case 500:
      default:
        throw Exception('Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
