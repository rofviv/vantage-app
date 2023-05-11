import 'package:flutter_modular/flutter_modular.dart';

import 'news_widget.dart';

class NewsModule extends Module {
  static String route = '/news/';

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(NewsWidget.route, child: (_, args) => const NewsWidget()),
  ];
}
