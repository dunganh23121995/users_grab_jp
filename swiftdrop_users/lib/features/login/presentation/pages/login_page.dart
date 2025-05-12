import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/authentication/domain/usecases/login_usecase.dart';
import '../../../../core/navigation/app_routes.dart';
import '../../../../core/navigation/navigation_service.dart';
import '../../../../injection_container/global_injector.dart';
import '../cubit/authentication_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final LoginUseCase loginUseCase = getIt<LoginUseCase>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationCubit>(
      create: (context) => AuthenticationCubit(loginUseCase: loginUseCase),
      child: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.login)),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LoginForm(),
        ),
      ),
    );
  }
}

// features/auth/presentation/login_form.dart
class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationService navigationService = getIt<NavigationService>();

    return BlocConsumer<AuthenticationCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          // Điều hướng hoặc xử lý sau khi login thành công
          Navigator.pushReplacementNamed(context, '/home');
        }
        if (state is LoginFailure) {
          // Hiển thị lỗi
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      builder: (context, state) {
        if (state is LoginLoading) {
          return Center(child: CircularProgressIndicator());
        }
        return Column(
          children: [
            TextField(
              // Nhập username
            ),
            TextField(
              // Nhập password
            ),
            ElevatedButton(
              onPressed: () {
                final username = 'user';
                final password = 'pass';
                // context.read<AuthenticationCubit>().login(username, password);
                navigationService.replaceWith(AppRoutes.home);
              },
              child: Text("Login"),
            ),
          ],
        );
      },
    );
  }
}

