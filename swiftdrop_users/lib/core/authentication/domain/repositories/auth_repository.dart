import '../entities/user_entity.dart';

abstract class AuthRepository {
  Future<(String token, UserEntity user)> login(String email, String password);
  Future<(String token, UserEntity user)> logout();
}
