import 'package:dio/dio.dart';
import 'package:four/constant/network/method.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<ApiServiceInterface>()])
abstract class ApiServiceInterface {
  Future<Response<T>> invoke<T>(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    HttpMethod method,
  });
}
