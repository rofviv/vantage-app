import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../bloc/blocs.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/repositories/preferences_repository.dart';
import '../modules.dart';

class SplashController {
  final PreferencesRepository _preferencesRepository;
  final ThemeBloc _themeBloc;
  final AuthRepository _authRepository;
  final LanguageBloc _languageBloc;
  final SessionBloc _sessionBloc;
  SplashController({
    required PreferencesRepository preferencesRepository,
    required ThemeBloc themeBloc,
    required AuthRepository authRepository,
    required LanguageBloc languageBloc,
    required SessionBloc sessionBloc,
  })  : _preferencesRepository = preferencesRepository,
        _themeBloc = themeBloc,
        _authRepository = authRepository,
        _languageBloc = languageBloc,
        _sessionBloc = sessionBloc {
    _init();
  }

  void _init() async {
    await _loadPreferences();
    final token = _preferencesRepository.token;
    await Future.delayed(const Duration(milliseconds: 2000));
    if (kDebugMode) {
      print("AccessToken: $token");
    }
    Modular.to.navigate(RootModule.route + HomeModule.route.substring(1));
  }

  Future<void> _loadPreferences() async {
    final locale = _preferencesRepository.locale;
    if (locale != null) {
      _languageBloc.add(OnChangeLocale(locale));
    }

    final darkMode = _preferencesRepository.isDark;
    _themeBloc.add(OnToggleThemeEvent(darkMode));
  }
}
