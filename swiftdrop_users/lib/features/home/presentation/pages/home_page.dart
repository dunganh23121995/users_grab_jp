import 'package:flutter/material.dart';

import '../../../../core/l10n/generated/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""), // Tiêu đề màn hình
      ),
      body: Center(
        child: Text(
          AppLocalizations.of(
            context,
          )!.home_title, // Nội dung hiển thị giữa màn hình
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
