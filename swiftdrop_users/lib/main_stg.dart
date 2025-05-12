import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:swiftdrop_users/core/enums/environment.dart';
import 'package:swiftdrop_users/core/navigation/app_routes.dart';
import 'package:swiftdrop_users/core/navigation/navigation_service.dart';
import 'package:swiftdrop_users/core/theme/app_theme.dart';
import 'package:swiftdrop_users/features/splash/presentation/pages/splash_page.dart';
import 'features/home/presentation/pages/home_page.dart';
import 'features/login/presentation/pages/login_page.dart';
import 'injection_container/global_injector.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  // Load .env to get data for AppConfig
  await dotenv.load(fileName: 'assets/.env.stg');

  // Load AppConfig to setup const for application
  await GlobalInjector.setupDependencies(environment: Environment.staging);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: [
        ...AppLocalizations.localizationsDelegates,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ja', 'JP'),
        Locale('en', 'US'),
        // Locale('vi', 'VN'),
      ],
      locale: Locale('ja'),
      navigatorKey: getIt<NavigationService>().navigatorKey,
      theme: AppTheme.blueTheme,
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (_) => SplashScreen(),
        AppRoutes.login: (_) => LoginScreen(),
        AppRoutes.home: (_) => HomeScreen(),
      },
      // home: const SplashScreen(),
    );
  }
}
