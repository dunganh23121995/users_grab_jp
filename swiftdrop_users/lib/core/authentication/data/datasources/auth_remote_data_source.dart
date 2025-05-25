import '../../../../core/network/api_client.dart';
import '../models/login_request_dto.dart';
import '../models/login_response_dto.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponseDto> login(LoginRequestDto request);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient apiClient;

  AuthRemoteDataSourceImpl(this.apiClient);

  @override
  Future<LoginResponseDto> login(LoginRequestDto request) async {
    final data = await apiClient.post('/login', data: request.toJson());
    return LoginResponseDto.fromJson(data);
  }
}
