import 'package:flutter/material.dart';

import '../../navigation.dart';
import '../../view.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: 'Second Page',
      body: _PageBody(),
    );
  }
}

class _PageBody extends StatelessWidget {
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
