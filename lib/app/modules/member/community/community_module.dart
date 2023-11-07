import 'package:flutter_modular/flutter_modular.dart';

import 'community_widget.dart';

class CommunityModule extends Module {
  static String route = '/community/';

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(CommunityWidget.route,
        child: (_, args) => const CommunityWidget()),
  ];
}
