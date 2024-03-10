import 'package:flutter/material.dart';
import 'package:tap_invest/features/home/presentation/screens/home_screen.dart';
import 'package:tap_invest/features/purchasing/presentation/screens/purchasing_screen.dart';

class Routes {
  static const home = '/home';
  static const purchasing = '/purchasing';

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          settings: settings,
          builder: ((context) => const HomeScreen()),
        );
      case purchasing:
        return MaterialPageRoute(
            settings: settings,
            builder: ((context) => const PurchasingScreen()));
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: ((context) => const HomeScreen()),
        );
    }
  }
}
