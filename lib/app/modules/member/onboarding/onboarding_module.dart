import 'package:flutter_modular/flutter_modular.dart';

import 'screens/screens.dart';
import 'onboarding_widget.dart';

class OnboardingModule extends Module {
  static String route = '/onboarding/';

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(OnboardingWidget.route,
        child: (_, args) => const OnboardingWidget()),
    ChildRoute(ChoosePlanScreen.route,
        child: (_, args) => const ChoosePlanScreen()),
    ChildRoute(PhoneNumberScreen.route,
        child: (_, args) => const PhoneNumberScreen()),
    ChildRoute(AccountScreen.route, child: (_, args) => const AccountScreen()),
    ChildRoute(UsernameScreen.route,
        child: (_, args) => const UsernameScreen()),
    ChildRoute(PasswordScreen.route,
        child: (_, args) => const PasswordScreen()),
    ChildRoute(WhereAreYouScreen.route,
        child: (_, args) => const WhereAreYouScreen()),
    ChildRoute(EthnicityScreen.route,
        child: (_, args) => const EthnicityScreen()),
    ChildRoute(PronounScreen.route, child: (_, args) => const PronounScreen()),
    ChildRoute(GenderScreen.route, child: (_, args) => const GenderScreen()),
    ChildRoute(MedicalScreen.route, child: (_, args) => const MedicalScreen()),
  ];
}
