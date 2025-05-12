// core/network/dio_interceptor.dart
import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Thêm token nếu cần
    // options.headers["Authorization"] = "Bearer your_token_here";

    print('--> ${options.method} ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('<-- ${response.statusCode} ${response.requestOptions.path}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('!! Dio error: ${err.message}');
    super.onError(err, handler);
  }
}
