import 'package:flutter/material.dart';

import 'screens/choose_plan.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({super.key});
  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ChoosePlanScreen(),
    );
  }
}
