import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../state.dart';
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
    final navigationCubit = GetIt.I<NavigationCubit>();
    return Center(
      child: ElevatedButton(
        onPressed: () => navigationCubit.goBack(),
        child: const Text('Home'),
      ),
    );
  }
}
