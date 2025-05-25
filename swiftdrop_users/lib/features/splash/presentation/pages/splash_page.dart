// features/splash/presentation/pages/splash_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigation/app_routes.dart';
import '../../../../core/navigation/navigation_service.dart';
import '../../../../generated/assets.dart';
import '../../../../injection_container/global_injector.dart';
import '../cubit/splash_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashCubit cubit = SplashCubit();
  @override
  void initState() {
    super.initState();
    cubit.loadStatusApplication();
  }

  @override
  Widget build(BuildContext context) {
    final NavigationService navigationService = getIt<NavigationService>();

    return BlocListener<SplashCubit, SplashState>(
      bloc: cubit,
      listener: (context, state) {
        if (state is SplashNavigateToHome) {
          navigationService.replaceWith(AppRoutes.home);
        } else if (state is SplashNavigateToLogin) {
          navigationService.replaceWith(AppRoutes.login);
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Hiển thị logo
              Image.asset(Assets.imagesUserLogoRemovebgPreview, width: 120, height: 120),
              const SizedBox(height: 32),
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
