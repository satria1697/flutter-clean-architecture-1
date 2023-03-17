import 'package:dio/dio.dart';
import 'package:four/constant/network/method.dart';
import 'package:four/domain/service/api_service.dart';

class ApiService implements ApiServiceInterface {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: "https://fakeapi.com",
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 9),
  ));

  @override
  Future<Response<T>> invoke<T>(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    HttpMethod method = HttpMethod.GET,
  }) async {
    return _dio.request(
      path,
      data: data,
      queryParameters: queryParameters,
      options: Options(
        method: method.name,
      ),
    );
  }
}
