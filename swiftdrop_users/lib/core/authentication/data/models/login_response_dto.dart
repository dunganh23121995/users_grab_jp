import '../../domain/entities/user_entity.dart';

class LoginResponseDto {
  final String token;
  final UserEntity user;

  LoginResponseDto({required this.token, required this.user});

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) {
    return LoginResponseDto(token: json['token'], user: UserEntity.fromJson(json['user']));
  }
}
