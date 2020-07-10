import 'package:flutter/material.dart';
import 'package:launcher/screens/before_screen.dart';
import 'package:launcher/screens/left_screen_access.dart';
import 'package:launcher/screens/main_screens.dart';
import 'package:launcher/screens/settings_screen.dart';
import 'package:launcher/screens/splash_screen.dart';

class RoutGenerator {
  static Route<dynamic> generateRout(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Splashs());
      case '/before':
        return MaterialPageRoute(builder: (_) => BeforeScreen());
      case '/main':
        return MaterialPageRoute(builder: (_) => MainScreen());
      case '/main2':
        return MaterialPageRoute(
            builder: (_) => MainScreen(
                  pagenum: 2,
                ));
      case '/leftaccess':
        return MaterialPageRoute(builder: (_) => LeftScreenAccess());
      case '/settings':
        return MaterialPageRoute(builder: (_) => SettingsScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('ErrorRoute'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
