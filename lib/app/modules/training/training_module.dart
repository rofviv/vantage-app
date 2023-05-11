import 'package:flutter_modular/flutter_modular.dart';

import 'training_widget.dart';

class TrainingModule extends Module {
  static String route = '/training/';

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(TrainingWidget.route,
        child: (_, args) => const TrainingWidget()),
  ];
}
