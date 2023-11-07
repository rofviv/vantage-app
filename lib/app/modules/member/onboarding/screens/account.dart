import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meddefend_app/app/shared/shared.dart';

import '../../member.dart';
import 'screens.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});
  static String route = '/account/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutButton(
        body: Column(
          children: [
            const Text(
              "Let’s set up your account",
              style: h2Bold,
            ),
            const SizedBox(height: 15),
            Text(
              "Introduce your real information for a good experience.",
              style: paragraphRegular.copyWith(color: grey),
            ),
            const SizedBox(height: 15),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: grey20),
              ),
              child: const Center(
                child: Text(
                  "A",
                  style: h2Regular,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Change Color"),
            ),
            const SizedBox(height: 15),
            const TextField(
              decoration: InputDecoration(
                label: Text("First Name"),
              ),
            ),
            const SizedBox(height: 15),
            const TextField(
              decoration: InputDecoration(
                label: Text("Last Name"),
              ),
            ),
            const SizedBox(height: 15),
            const TextField(
              decoration: InputDecoration(
                label: Text("Date of Birth"),
                suffixIcon: Icon(Icons.calendar_today),
              ),
            ),
            const SizedBox(height: 15),
            const TextField(
              decoration: InputDecoration(
                label: Text("Email"),
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
                  OnboardingModule.route + UsernameScreen.route.substring(1));
            },
            title: "Next",
          ),
        ),
      ),
    );
  }
}
