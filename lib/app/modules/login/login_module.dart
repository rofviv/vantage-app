import 'package:flutter_modular/flutter_modular.dart';
import 'package:meddefend_app/app/modules/login/screens/sign_up_screen.dart';

import 'login_widget.dart';

class LoginModule extends Module {
  static String route = '/login/';

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(LoginWidget.route, child: (_, args) => const LoginWidget()),
    ChildRoute(SignUpScreen.route, child: (_, args) => const SignUpScreen()),
  ];
}
