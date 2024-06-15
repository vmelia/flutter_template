import 'package:flutter/material.dart';
import 'package:flutter_template/contracts.dart';

class NavigationServiceImpl implements NavigationService {
  static final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  static GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  @override
  Future<dynamic> navigateTo(String route) => _navigatorKey.currentState!.pushNamed(route);

  @override
  void goBack() => _navigatorKey.currentState!.pop();
}
