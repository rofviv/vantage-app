import 'package:flutter_modular/flutter_modular.dart';

import '../modules.dart';
import 'bloc/root_bloc.dart';
import 'root_widget.dart';

class RootModule extends Module {
  static String route = '/root/';

  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RootBloc())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      RootWidget.route,
      child: (_, __) => const RootWidget(),
      children: [
        ModuleRoute(
          HomeModule.route,
          module: HomeModule(),
          transition: TransitionType.noTransition,
        ),
        ModuleRoute(
          TrainingModule.route,
          module: TrainingModule(),
          transition: TransitionType.noTransition,
        ),
        ModuleRoute(
          NewsModule.route,
          module: NewsModule(),
          transition: TransitionType.noTransition,
        ),
        ModuleRoute(
          CartModule.route,
          module: CartModule(),
          transition: TransitionType.noTransition,
        ),
      ],
    ),
  ];
}
