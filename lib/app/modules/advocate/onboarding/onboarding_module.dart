import 'package:flutter_modular/flutter_modular.dart';

import 'screens/screens.dart';
import 'onboarding_widget.dart';

class OnboardingAdvocateModule extends Module {
  static String route = '/onboarding-advocate/';

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(OnboardingAdvocateWidget.route,
        child: (_, args) => const OnboardingAdvocateWidget()),
    ChildRoute(PhoneNumberAdvocateScreen.route,
        child: (_, args) => const PhoneNumberAdvocateScreen()),
    ChildRoute(AccountAdvocateScreen.route,
        child: (_, args) => const AccountAdvocateScreen()),
    ChildRoute(UsernameAdvocateScreen.route,
        child: (_, args) => const UsernameAdvocateScreen()),
    ChildRoute(PasswordAdvocateScreen.route,
        child: (_, args) => const PasswordAdvocateScreen()),
    ChildRoute(PronounAdvocateScreen.route,
        child: (_, args) => const PronounAdvocateScreen()),
    ChildRoute(SpecialistAdvocateScreen.route,
        child: (_, args) => const SpecialistAdvocateScreen()),
    ChildRoute(TimezoneAdvocateScreen.route,
        child: (_, args) => const TimezoneAdvocateScreen()),
    ChildRoute(AvailabilityAdvocateScreen.route,
        child: (_, args) => const AvailabilityAdvocateScreen()),
  ];
}
