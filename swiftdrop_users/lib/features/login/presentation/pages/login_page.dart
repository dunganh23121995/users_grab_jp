import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swiftdrop_users/core/enums/app_language.dart';
import 'package:swiftdrop_users/core/l10n/cubit/language_cubit.dart';
import 'package:swiftdrop_users/core/theme/app_button_theme.dart';
import 'package:swiftdrop_users/core/widget/text_field_email.dart';
import 'package:swiftdrop_users/core/widget/text_field_password.dart';

import '../../../../core/authentication/domain/usecases/login_usecase.dart';
import '../../../../core/l10n/generated/app_localizations.dart';
import '../../../../core/navigation/navigation_service.dart';
import '../../../../generated/assets.dart';
import '../../../../injection_container/global_injector.dart';
import '../cubit/authentication_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final NavigationService navigationService = getIt<NavigationService>();
  final LoginUseCase loginUseCase = getIt<LoginUseCase>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationCubit(loginUseCase: loginUseCase),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              final cubitLanguage = context.read<LanguageCubit>();
              cubitLanguage.changeLanguage(AppLanguage.english);
            },
            icon: Image.asset(Assets.imagesDrawerMenu),
          ),
          title: Text(AppLocalizations.of(context)!.grab_luggage_version),
          centerTitle: true,
          actions: [
            Image.asset(Assets.imagesBellNotification),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.grey.shade300,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(
              children: [
                Center(
                  child: Text(
                    AppLocalizations.of(context)!.login_register_as_a_new_user,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  AppLocalizations.of(context)!.login,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 12),
                TextFieldEmail(
                  controller: usernameController,
                  hintText: AppLocalizations.of(context)!.user_id,
                  invalidErrorText: AppLocalizations.of(context)!.email_invalid,
                ),
                const SizedBox(height: 12),
                TextFieldPassword(
                  controller: passwordController,
                  hintText: AppLocalizations.of(context)!.password,
                  tooShortErrorText:
                      AppLocalizations.of(
                        context,
                      )!.password_need_greater_than_six,
                  emptyErrorText:
                      AppLocalizations.of(context)!.password_need_fill,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(AppLocalizations.of(context)!.login),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  AppLocalizations.of(context)!.forgot_your_password,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                Text(
                  AppLocalizations.of(context)!.new_user_registration,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                TextField(
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.hint_email,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 14),
                    ),
                    child: Text(
                      AppLocalizations.of(context)!.sign_up_with_email,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        AppLocalizations.of(context)!.or_continue_with,
                      ),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton.icon(
                    style:
                        Theme.of(
                          context,
                        ).extension<AppButtonThemes>()!.googleButtonTheme,
                    onPressed: () {},
                    icon: SvgPicture(SvgAssetLoader(Assets.svgsGoogle)),
                    label: Text(AppLocalizations.of(context)!.google),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(
              icon: Icon(Icons.confirmation_number_outlined),
              label: '',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none),
              label: '',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
          ],
        ),
      ),
    );
  }
}
