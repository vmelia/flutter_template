import 'package:flutter_template/contracts.dart';

class NavigationServiceImpl implements NavigationService {
  @override
  Future<dynamic> navigateTo(String route) => NavigationService.navigatorKey.currentState!.pushNamed(route);

  @override
  void goBack() => NavigationService.navigatorKey.currentState!.pop();
}
