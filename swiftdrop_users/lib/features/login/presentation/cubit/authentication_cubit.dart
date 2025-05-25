import 'package:bloc/bloc.dart';

import '../../../../core/authentication/domain/entities/user_entity.dart';
import '../../../../core/authentication/domain/usecases/login_usecase.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<LoginState> {
  AuthenticationCubit({required this.loginUseCase}) : super(LoginInitial());
  final LoginUseCase loginUseCase;

  Future<void> login(String email, String password) async {
    emit(LoginLoading(state: state));
    try {
      final (token, user) = await loginUseCase.loginBase(email, password);
      emit(
        LoginSuccess(
          state:
              state
                ..token = token
                ..user = user,
        ),
      );
    } catch (e) {
      emit(LoginFailure(e.toString(), state: state));
    }
  }
}
