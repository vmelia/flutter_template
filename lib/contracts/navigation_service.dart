import 'package:flutter/material.dart';

abstract class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  
  Future<dynamic> navigateTo(String route);
  void goBack();
}
