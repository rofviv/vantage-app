import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/shared.dart';
import '../onboarding_module.dart';
import 'screens.dart';

class UsernameAdvocateScreen extends StatelessWidget {
  const UsernameAdvocateScreen({super.key});
  static String route = '/username/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutButton(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create a username",
              style: h2Bold,
            ),
            const SizedBox(height: 15),
            Text(
              "Your username will be your unique identity within the community, allowing you to connect",
              style: paragraphRegular.copyWith(color: grey),
            ),
            const SizedBox(height: 15),
            const TextField(
              decoration: InputDecoration(
                label: Text("Username"),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
        bottomAction: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 20),
          child: ButtonDefaultShared(
            onTap: () {
              Modular.to.pushNamed(OnboardingAdvocateModule.route +
                  PronounAdvocateScreen.route.substring(1));
            },
            title: "Next",
          ),
        ),
      ),
    );
  }
}
