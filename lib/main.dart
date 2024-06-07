import 'package:flutter/material.dart';

import 'navigation.dart';
import 'services.dart';
import 'state.dart';
import 'view.dart';

void main() {
  configureServices();
  configureState();
  configureView();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.purple,
      ),
      home: const HomePage(),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: NavigationRoute.homePage,
      navigatorKey: PageNavigator.navigatorKey,
    );
  }
}
