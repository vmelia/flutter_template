import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../contracts.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationService = GetIt.I<NavigationService>();
    return Center(
      child: ElevatedButton(
        onPressed: () => navigationService.goBack(),
        child: const Text('Home'),
      ),
    );
  }
}
