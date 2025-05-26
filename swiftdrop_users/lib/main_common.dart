import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiftdrop_users/core/l10n/cubit/language_cubit.dart';
import 'package:swiftdrop_users/core/navigation/app_routes.dart';
import 'package:swiftdrop_users/core/navigation/navigation_service.dart';
import 'package:swiftdrop_users/core/theme/app_theme.dart';
import 'package:swiftdrop_users/features/splash/presentation/pages/splash_page.dart';
import 'core/enums/app_language.dart';
import 'core/l10n/generated/app_localizations.dart';
import 'features/home/presentation/pages/home_page.dart';
import 'features/login/presentation/pages/login_page.dart';
import 'injection_container/global_injector.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LanguageCubit>(
          create: (BuildContext context) => LanguageCubit(),
        ),
      ],
      child: BlocBuilder<LanguageCubit, LanguageState>(
        buildWhen: (oldState, newState) {
          return oldState.language != newState.language;
        },
        builder: (context, stateLanguage) {
          return MaterialApp(
            title: 'Flutter Demo',
            localizationsDelegates: [
              ...AppLocalizations.localizationsDelegates,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLanguage.values.map((e) => e.locale).toList(),
            locale:
                stateLanguage.language?.locale ?? AppLanguage.japanese.locale,
            navigatorKey: getIt<NavigationService>().navigatorKey,
            theme: AppTheme.lightTheme,
            initialRoute: AppRoutes.splash,
            routes: {
              AppRoutes.splash: (_) => SplashScreen(),
              AppRoutes.login: (_) => LoginScreen(),
              AppRoutes.home: (_) => HomeScreen(),
            },
            // home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
