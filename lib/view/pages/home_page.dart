import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../contracts.dart';
import '../../services.dart';
import '../../state.dart';
import '../../view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: 'Home Page',
      body: _PageBloc(),
    );
  }
}

class _PageBloc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mainCubit = GetIt.I<MainCubit>()..initialize();

    return BlocProvider(
      create: (BuildContext context) => mainCubit,
      child: BlocBuilder<MainCubit, MainState>(
        bloc: mainCubit,
        builder: (context, state) => _PageBody(state: state),
      ),
    );
  }
}

class _PageBody extends StatelessWidget {
  const _PageBody({required this.state});
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
          style: appTheme.textWithBorderStyle,
        ),
        FloatingActionButton(
          heroTag: 'calculating.',
          onPressed: () => mainCubit.doStuff(DateTime.now()),
          child: const Icon(
            Icons.calculate,
            color: Colors.blue,
          ),
        ),
        FloatingActionButton(
          heroTag: 'navigate',
          onPressed: () => navigationCubit.navigateTo(NavigationRoute.secondPage),
          child: const Icon(
            Icons.travel_explore,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
