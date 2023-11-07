import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meddefend_app/app/modules/advocate/onboarding/screens/screens.dart';

import '../../../../shared/shared.dart';
import '../onboarding_module.dart';

class AvailabilityAdvocateScreen extends StatelessWidget {
  const AvailabilityAdvocateScreen({super.key});
  static String route = '/availability/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutButton(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Set your availability",
              style: h2Bold,
            ),
            const SizedBox(height: 15),
            Text(
              "Please choose your available time slots for appointments.",
              style: paragraphRegular.copyWith(color: grey),
            ),
            const SizedBox(height: 15),
            const Text(
              "The schedule is adapted to your time zone",
              style: paragraphRegular,
            ),
            const SizedBox(height: 30),
            //
            const SizedBox(height: 50),
          ],
        ),
        bottomAction: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 20),
          child: ButtonDefaultShared(
            onTap: () {
              Modular.to.pushNamed(OnboardingAdvocateModule.route +
                  PasswordAdvocateScreen.route.substring(1));
            },
            title: "Next",
          ),
        ),
      ),
    );
  }
}
