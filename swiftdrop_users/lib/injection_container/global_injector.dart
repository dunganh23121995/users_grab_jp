import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

import '../core/app_config/app_config.dart';
import '../core/authentication/data/datasources/auth_remote_data_source.dart';
import '../core/authentication/data/repositories/auth_repository_impl.dart';
import '../core/authentication/domain/repositories/auth_repository.dart';
import '../core/authentication/domain/usecases/login_usecase.dart';
import '../core/enums/environment.dart';
import '../core/navigation/navigation_service.dart';
import '../core/network/api_client.dart';
import '../core/network/dio_client.dart';

final GetIt getIt = GetIt.instance;

class GlobalInjector {
  // Register injection for all application
  static Future<void> setupDependencies({
    required Environment environment,
  }) async {
    // Load data form .env
    String serverApiUrl = dotenv.get('SERVER_API_URL');
    String googleAPIKey = dotenv.get('GOOGLE_API_KEY');

    // Injection to DI Container
    getIt.registerSingleton<AppConfig>(
      AppConfig(
        environment: environment,
        serverApiUrl: serverApiUrl,
        googleAPIKey: googleAPIKey,
      ),
    );

    getIt.registerLazySingleton<NavigationService>(() => NavigationService());
    getIt.registerSingleton<ApiClient>(SVBaseClient(getIt<AppConfig>()));
    getIt.registerSingleton<AuthRemoteDataSource>(
      AuthRemoteDataSourceImpl(getIt<ApiClient>()),
    );
    getIt.registerSingleton<AuthRepository>(
      AuthRepositoryImpl(getIt<AuthRemoteDataSource>()),
    );
    getIt.registerSingleton<LoginUseCase>(
      LoginUseCase(getIt<AuthRepository>()),
    );
  }
}
