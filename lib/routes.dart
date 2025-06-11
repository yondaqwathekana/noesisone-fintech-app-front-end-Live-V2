import 'package:flutter/material.dart';
import 'presentation/welcome/welcome_screen.dart';
import 'presentation/login/login_screen.dart';
import 'presentation/registration/registration_screen.dart';

class Routes {
  static const String welcome = '/';
  static const String login = '/login';
  static const String registration = '/registration';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case registration:
        return MaterialPageRoute(builder: (_) => const RegistrationScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('No route defined')),
          ),
        );
    }
  }
}
