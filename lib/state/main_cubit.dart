import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../contracts.dart';

class MainState extends Equatable {
  const MainState({this.output = ''});
  final String output;

  @override
  List<Object?> get props => [output];
}

class MainCubit extends Cubit<MainState> {
  MainCubit(this.mainService) : super(const MainState());

  final MainService mainService;

  initialize() {
    emit(const MainState(output: 'Empty'));
  }

  Future<void> doStuff(DateTime dateTime) async {
    final output = await mainService.doStuff(dateTime: dateTime);

    emit(MainState(output: output));
  }
}
