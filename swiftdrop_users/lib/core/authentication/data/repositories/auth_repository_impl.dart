import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';
import '../models/login_request_dto.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<(String token, UserEntity user)> login(String email, String password) async {
    final response = await remoteDataSource.login(LoginRequestDto(email: email, password: password));
    return (response.token, response.user);
  }

  @override
  Future<(String, UserEntity)> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
