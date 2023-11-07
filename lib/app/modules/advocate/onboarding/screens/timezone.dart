import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/shared.dart';
import '../onboarding_module.dart';
import 'screens.dart';

class TimezoneAdvocateScreen extends StatelessWidget {
  const TimezoneAdvocateScreen({super.key});
  static String route = '/timezone/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutButton(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What's your time zone?",
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
            // 
            const SizedBox(height: 50),
          ],
        ),
        bottomAction: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 20),
          child: ButtonDefaultShared(
            onTap: () {
              Modular.to.pushNamed(OnboardingAdvocateModule.route +
                  AvailabilityAdvocateScreen.route.substring(1));
            },
            title: "Next",
          ),
        ),
      ),
    );
  }
}
