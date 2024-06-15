abstract class NavigationService {
  // static final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  // static GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  Future<dynamic> navigateTo(String route);
  void goBack();
}
