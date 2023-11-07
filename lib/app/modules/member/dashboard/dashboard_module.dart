import 'package:flutter_modular/flutter_modular.dart';

import 'dashboard_widget.dart';

class DashboardModule extends Module {
  static String route = '/home/';

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(DashboardWidget.route,
        child: (_, args) => const DashboardWidget()),
  ];
}
