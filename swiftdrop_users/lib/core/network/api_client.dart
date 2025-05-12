// core/network/api_client.dart
abstract class ApiClient {
  Future<dynamic> get(String path, {Map<String, dynamic>? queryParams});
  Future<dynamic> post(String path, {dynamic data});
  Future<dynamic> put(String path, {dynamic data});
  Future<dynamic> delete(String path, {dynamic data});
}
