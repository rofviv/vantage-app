import 'package:flutter_modular/flutter_modular.dart';

import 'profile_widget.dart';

class ProfileModule extends Module {
  static String route = '/cart/';

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(ProfileWidget.route, child: (_, args) => const ProfileWidget()),
  ];
}
