import 'package:flutter_modular/flutter_modular.dart';

import '../member.dart';
import 'bloc/root_bloc.dart';
import 'root_widget.dart';

class RootModule extends Module {
  static String route = '/root/';

  @override
  final List<Bind> binds = [Bind.lazySingleton((i) => RootBloc())];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      RootWidget.route,
      child: (_, __) => const RootWidget(),
      children: [
        ModuleRoute(
          DashboardModule.route,
          module: DashboardModule(),
          transition: TransitionType.noTransition,
        ),
        ModuleRoute(
          CommunityModule.route,
          module: CommunityModule(),
          transition: TransitionType.noTransition,
        ),
        ModuleRoute(
          AICheckerModule.route,
          module: AICheckerModule(),
          transition: TransitionType.noTransition,
        ),
        ModuleRoute(
          ProfileModule.route,
          module: ProfileModule(),
          transition: TransitionType.noTransition,
        ),
      ],
    ),
  ];
}
