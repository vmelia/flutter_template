import 'package:flutter_bloc/flutter_bloc.dart';

import '../contracts.dart';

class NavigationCubit extends Cubit<void> {
  NavigationCubit(this.navigationService) : super(null);

  final NavigationService navigationService;

  Future<void> navigateTo(String route) => navigationService.navigateTo(route);

  void goBack() => navigationService.goBack();
}
