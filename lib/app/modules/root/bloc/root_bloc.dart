import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../modules.dart';

part 'root_event.dart';
part 'root_state.dart';

class RootBloc extends Bloc<RootEvent, RootState> {
  final List<String> routes = [
    HomeModule.route,
    TrainingModule.route,
    NewsModule.route,
    CartModule.route,
  ];

  RootBloc() : super(const RootState()) {
    on<OnChangeIndex>((event, emit) {
      emit(state.copyWith(currentIndex: event.index));
      changePage(routes[state.currentIndex]);
    });
  }

  void changePage(String route) {
    Modular.to.navigate(RootModule.route + route.substring(1));
  }
}
