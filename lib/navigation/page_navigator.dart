import 'package:flutter/material.dart';

 class PageNavigator {
  static final _navigatorKey = GlobalKey<NavigatorState>();

  static GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  static Future<dynamic> navigateTo(String route) => _navigatorKey.currentState!.pushNamed(route);

  static void goBack() => _navigatorKey.currentState!.pop();
}
