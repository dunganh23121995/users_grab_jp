part of 'splash_cubit.dart';

@immutable
sealed class SplashState {}

final class SplashInitial extends SplashState {}

final class SplashNavigateToHome extends SplashState{}

final class SplashNavigateToLogin extends SplashState{}
