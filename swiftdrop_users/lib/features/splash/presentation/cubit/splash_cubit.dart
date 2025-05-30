import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  Future<void> loadStatusApplication() async {
    await Future.delayed(Duration(seconds: 2));
    emit(SplashNavigateToLogin());
  }
}
