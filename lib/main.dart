import 'package:flutter/material.dart';
import 'routes.dart';
import 'core/theme.dart';

void main() {
  runApp(const NoesisOneFintechApp());
}

class NoesisOneFintechApp extends StatelessWidget {
  const NoesisOneFintechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoesisOne Fintech',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.blueTheme,
      initialRoute: Routes.welcome,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
