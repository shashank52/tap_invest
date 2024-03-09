import 'package:flutter/material.dart';
import 'package:tap_invest/features/home/presentation/screens/home_screen.dart';

class Routes {
  static const home = '/home';
  static const setting = '/settings';

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          settings: settings,
          builder: ((context) => const HomeScreen()),
        );

      default:
        return MaterialPageRoute(
          settings: settings,
          builder: ((context) => const HomeScreen()),
        );
    }
  }
}
