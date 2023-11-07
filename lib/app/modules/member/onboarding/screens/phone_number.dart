import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meddefend_app/app/modules/member/onboarding/screens/account.dart';
import 'package:meddefend_app/app/shared/shared.dart';

import '../../member.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});
  static String route = '/phone-number/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutButton(
        body: Column(
          children: [
            const Text(
              "What’s your phone number?",
              style: h2Bold,
            ),
            const SizedBox(height: 15),
            Text(
              "We'll need your real phone number for verification purposes. Don't worry, your number will remain confidential, and we won't share it without your consent.",
              style: paragraphRegular.copyWith(color: grey),
            ),
            const SizedBox(height: 15),
            const TextField(
              decoration: InputDecoration(
                label: Text("Phone number"),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
        bottomAction: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 20),
          child: ButtonDefaultShared(
            onTap: () {
              Modular.to.pushNamed(
                  OnboardingModule.route + AccountScreen.route.substring(1));
            },
            title: "Next",
          ),
        ),
      ),
    );
  }
}
