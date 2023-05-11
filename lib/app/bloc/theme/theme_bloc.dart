import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(const ThemeState(
          themeMode: ThemeMode.light,
        )) {
    on<OnToggleThemeEvent>((event, emit) {
      emit(state.copyWith(
          themeMode: event.isDark ? ThemeMode.dark : ThemeMode.light));
    });
  }
}
