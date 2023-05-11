part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class OnToggleThemeEvent extends ThemeEvent {
  final bool isDark;

  const OnToggleThemeEvent(this.isDark);
}
