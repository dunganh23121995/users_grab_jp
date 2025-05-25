import '../enums/environment.dart';

class AppConfig {
  AppConfig({required this.environment, required this.serverApiUrl, required this.googleAPIKey});

  final Environment environment;
  final String serverApiUrl;
  final String googleAPIKey;
}
