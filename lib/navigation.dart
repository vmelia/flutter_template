import 'package:get_it/get_it.dart';

import 'contracts.dart';
import 'navigation.dart';

export "navigation/navigation_service_impl.dart";

void configureNavigation() {
  GetIt.I.registerSingleton<NavigationService>(NavigationServiceImpl());
}