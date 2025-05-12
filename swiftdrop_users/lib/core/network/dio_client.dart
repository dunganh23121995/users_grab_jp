// core/network/dio_client.dart
import 'package:dio/dio.dart';
import '../app_config/app_config.dart';
import 'api_client.dart';
import 'exceptions.dart';
import 'interceptor.dart';

class SVBaseClient implements ApiClient {
  final Dio _dio;

  SVBaseClient(AppConfig appConfig)
    : _dio = Dio(BaseOptions(baseUrl: appConfig.serverApiUrl)) {
    _dio.interceptors.add(DioInterceptor());
  }

  @override
  Future<dynamic> get(String path, {Map<String, dynamic>? queryParams}) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParams);
      return response.data;
    } on DioException catch (e) {
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<dynamic> post(String path, {data}) async {
    try {
      final response = await _dio.post(path, data: data);
      return response.data;
    } on DioException catch (e) {
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<dynamic> put(String path, {data}) async {
    try {
      final response = await _dio.put(path, data: data);
      return response.data;
    } on DioException catch (e) {
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<dynamic> delete(String path, {data}) async {
    try {
      final response = await _dio.delete(path, data: data);
      return response.data;
    } on DioException catch (e) {
      throw AppException.fromDioError(e);
    }
  }
}
