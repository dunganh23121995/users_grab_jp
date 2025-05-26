import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<(String token, UserEntity user)> loginBase(
    String email,
    String password,
  ) {
    return repository.login(email, password);
  }
}
