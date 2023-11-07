import 'package:flutter_modular/flutter_modular.dart';

import 'ai_checker_widget.dart';

class AICheckerModule extends Module {
  static String route = '/ai-checker/';

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(AICheckerWidget.route,
        child: (_, args) => const AICheckerWidget()),
  ];
}
