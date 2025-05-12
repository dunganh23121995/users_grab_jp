part of 'authentication_cubit.dart';

sealed class LoginState {
  String? token;
  UserEntity? user;

  LoginState({required LoginState? state}) {
    token = state?.token;
    user = state?.user;
  }
}

final class LoginInitial extends LoginState {
  LoginInitial() : super(state: null);
}

class LoginLoading extends LoginState {
  LoginLoading({required super.state});
}

class LoginSuccess extends LoginState {
  LoginSuccess({required super.state});
}

class LoginFailure extends LoginState {
  final String message;

  LoginFailure(this.message, {required super.state});
}
