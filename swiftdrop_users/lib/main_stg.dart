import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:swiftdrop_users/core/enums/environment.dart';
import 'injection_container/global_injector.dart';

import 'main_common.dart';

Future<void> main() async {
  // Load .env to get data for AppConfig
  await dotenv.load(fileName: 'assets/.env.stg');

  // Load AppConfig to setup const for application
  await GlobalInjector.setupDependencies(environment: Environment.staging);

  runApp(MyApp());
}
