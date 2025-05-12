// core/network/exceptions.dart
import 'package:dio/dio.dart';

class AppException implements Exception {
  final String message;
  AppException(this.message);

  factory AppException.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
        return AppException("Kết nối bị timeout");
      case DioExceptionType.badResponse:
        return AppException("Lỗi máy chủ: ${error.response?.statusCode}");
      case DioExceptionType.connectionError:
        return AppException("Không có kết nối mạng");
      default:
        return AppException("Lỗi không xác định");
    }
  }

  @override
  String toString() => message;
}
