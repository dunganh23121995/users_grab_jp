import 'package:bloc/bloc.dart';

import '../../../../core/authentication/domain/entities/user_entity.dart';
import '../../../../core/authentication/domain/usecases/login_usecase.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<LoginState> {
  AuthenticationCubit({required this.loginUseCase}) : super(LoginInitial());
  final LoginUseCase loginUseCase;

  Future<void> login(String email, String password) async {
    emit(LoginLoading(state: state));
    if ((!isValidEmail(email)) || (!isValidPassword(password))) {
      emit(LoginFailure("", state: state));
      return;
    }
    await Future.delayed(Duration(seconds: 2));
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        // final (token, user) = await loginUseCase.loginBase(email, password);
        emit(
          LoginSuccess(
            state:
                state
                  ..token = ''
                  ..user = UserEntity(id: 1, name: "", email: ""),
          ),
        );
      } else {
        emit(LoginFailure("", state: state));
      }
    } catch (e) {
      emit(LoginFailure(e.toString(), state: state));
    }
  }

  bool isValidEmail(String? email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return email != null && email.isNotEmpty && emailRegex.hasMatch(email);
  }

  bool isValidPassword(String? password, {int minLength = 6}) {
    return password != null && password.isNotEmpty && password.length >= minLength;
  }
}
