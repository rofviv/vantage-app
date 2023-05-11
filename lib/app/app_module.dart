import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bloc/blocs.dart';
import 'domain/interceptors/default_interceptor.dart';
import 'domain/repositories/repositories.dart';
import 'guards/app_guards.dart';
import 'modules/modules.dart';

const baseUrl = "https://www.vantagesports.com";

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    AsyncBind<SharedPreferences>((i) => SharedPreferences.getInstance()),
    Bind.lazySingleton(
        (i) => PreferencesRepositoryImpl(i<SharedPreferences>())),
    Bind.lazySingleton(
        (i) => DefaultInterceptor(i<PreferencesRepositoryImpl>())),
    Bind.lazySingleton((i) => Dio(BaseOptions(baseUrl: baseUrl))
      ..interceptors.add(i<DefaultInterceptor>())),
    Bind.lazySingleton((i) => AuthRepositoryImpl(i<Dio>())),
    Bind.singleton((i) => LanguageBloc()),
    Bind.singleton((i) => ThemeBloc()),
    Bind.lazySingleton((i) => SessionBloc(authRepository: i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      SplashModule.route,
      module: SplashModule(),
      guards: [AppGuard()],
    ),
    ModuleRoute(
      RootModule.route,
      module: RootModule(),
    ),
  ];
}
