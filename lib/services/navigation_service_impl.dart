import 'package:flutter/material.dart';

import '../contracts.dart';

class NavigationServiceImpl implements NavigationService {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  @override
  Future<dynamic> navigateTo(String route) => _navigatorKey.currentState!.pushNamed(route);

  @override
  void goBack() => _navigatorKey.currentState!.pop();
}
