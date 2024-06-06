import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../contracts.dart';
import '../../route_generator.dart';
import '../../state.dart';
import '../../view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mainCubit = GetIt.I<MainCubit>()..initialize();

    return BlocProvider(
      create: (BuildContext context) => mainCubit,
      child: BlocBuilder<MainCubit, MainState>(
        bloc: mainCubit,
        builder: (context, state) => _HomePageView(state: state),
      ),
    );
  }
}

class _HomePageView extends StatelessWidget {
  const _HomePageView({required this.state});
  final MainState state;

  @override
  Widget build(BuildContext context) {
    final mainCubit = GetIt.I<MainCubit>();
    final navigationCubit = GetIt.I<NavigationCubit>();
    final appTheme = GetIt.I<AppTheme>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextWithBorder(
          text: state.output,
          textStyle: appTheme.mainTextStyle.textStyle,
          colour: Colors.red,
        ),
        FloatingActionButton(
          onPressed: () => mainCubit.doStuff(DateTime.now()),
          child: const Icon(
            Icons.umbrella,
            color: Colors.white,
          ),
        ),
        ElevatedButton(
          onPressed: () => navigationCubit.navigateTo(NavigationRoute.secondPage),
          child: const Text('Second Page'),
        ),
      ],
    );
  }
}
