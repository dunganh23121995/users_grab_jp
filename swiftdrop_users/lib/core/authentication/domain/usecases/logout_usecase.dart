import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class LogoutUseCase {
  final AuthRepository repository;

  LogoutUseCase(this.repository);

  Future<(String token, UserEntity user)> logout(String email, String password) {
    return repository.logout();
  }
}
