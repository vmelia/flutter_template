import 'package:flutter/material.dart';

import '../../navigation.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => PageNavigator.goBack(),
        child: const Text('Home'),
      ),
    );
  }
}
