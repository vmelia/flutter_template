import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../contracts.dart';

class NavigationCubit extends Cubit<void> {
  NavigationCubit(this.navigationService) : super(null);
  final NavigationService navigationService;

  Future<void> navigateTo(String route) async {
    await navigationService.navigateTo(route);
  }

  void goBack() {
    navigationService.goBack();
  }

  GlobalKey<NavigatorState> get navigatorKey => navigationService.navigatorKey;
}
