import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/authentication/signup_screen.dart';
import 'screens/authentication/login_sceen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        final args = settings.arguments;
        if (args is String) {
          return MaterialPageRoute(builder: (_) => HomeScreen(username: args));
        } else {
          return _errorRoute(settings);
        }
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      default:
        return _errorRoute(settings);
    }
  }

  static Route<dynamic> _errorRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(child: Text('No route defined for ${settings.name}')),
      ),
    );
  }
}
