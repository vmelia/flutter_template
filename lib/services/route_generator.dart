import 'package:flutter/material.dart';

import '../view.dart';

class RouteGenerator {
  static Route<MaterialPageRoute<dynamic>> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case NavigationRoute.homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case NavigationRoute.secondPage:
        return MaterialPageRoute(builder: (_) => const SecondPage());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No path defined for ${routeSettings.name}'),
            ),
          ),
        );
    }
  }
}

class NavigationRoute {
  static const String homePage = '/';
  static const String secondPage = '/secondPage';
}
