import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

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
    final navigationCubit = GetIt.I<NavigationCubit>();
    return BlocProvider(
      create: (BuildContext context) => navigationCubit,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.purple,
        ),
        home: const HomePage(),
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: NavigationRoute.homePage,
        navigatorKey: NavigationServiceImpl.navigatorKey,
      ),
    );
  }
}
