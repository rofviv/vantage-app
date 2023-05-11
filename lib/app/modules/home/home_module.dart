import 'package:flutter_modular/flutter_modular.dart';

import 'home_widget.dart';

class HomeModule extends Module {
  static String route = '/home/';

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(HomeWidget.route, child: (_, args) => const HomeWidget()),
  ];
}
