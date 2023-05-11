import 'package:flutter_modular/flutter_modular.dart';

import 'cart_widget.dart';

class CartModule extends Module {
  static String route = '/cart/';

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(CartWidget.route, child: (_, args) => const CartWidget()),
  ];
}
