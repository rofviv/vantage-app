import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meddefend_app/app/modules/advocate/onboarding/screens/screens.dart';

import '../../../../shared/shared.dart';
import '../onboarding_module.dart';
import '../widgets/item_selection_widget.dart';

class SpecialistAdvocateScreen extends StatelessWidget {
  const SpecialistAdvocateScreen({super.key});
  static String route = '/specialist/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutButton(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What's your speciality?",
              style: h2Bold,
            ),
            const SizedBox(height: 15),
            Text(
              "Please, specify your current time zone for effective appointment scheduling.",
              style: paragraphRegular.copyWith(color: grey),
            ),
            const SizedBox(height: 15),
            const TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                suffixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 30),
            ItemSelection(
              title: "Pediatrics",
              active: false,
              onTap: () {},
            ),
            const SizedBox(height: 15),
            ItemSelection(
              title: "Orthopedics",
              active: false,
              onTap: () {},
            ),
            const SizedBox(height: 50),
          ],
        ),
        bottomAction: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 20),
          child: ButtonDefaultShared(
            onTap: () {
              Modular.to.pushNamed(OnboardingAdvocateModule.route +
                  TimezoneAdvocateScreen.route.substring(1));
            },
            title: "Next",
          ),
        ),
      ),
    );
  }
}
