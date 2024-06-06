import 'package:get_it/get_it.dart';

import 'contracts.dart';
import 'services.dart';

export "services/main_service_impl.dart";
export "services/navigation_service_impl.dart";

void configureServices() {
  GetIt.I.registerSingleton<MainService>(MainServiceImpl());
  GetIt.I.registerSingleton<NavigationService>(NavigationServiceImpl());
}
