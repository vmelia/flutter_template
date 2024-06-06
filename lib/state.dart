import 'package:get_it/get_it.dart';

import 'state.dart';

export "state/main_cubit.dart";
export "state/navigation_cubit.dart";

void configureState() {
  GetIt.I.registerSingleton<MainCubit>(MainCubit(GetIt.I()));
  GetIt.I.registerSingleton<NavigationCubit>(NavigationCubit(GetIt.I()));
}
