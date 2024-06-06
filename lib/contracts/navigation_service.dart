import 'package:flutter/material.dart';

abstract class NavigationService {
  GlobalKey<NavigatorState> get navigatorKey;

  Future<void> navigateTo(String route);
  void goBack();
}
