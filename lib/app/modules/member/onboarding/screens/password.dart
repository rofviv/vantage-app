import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/shared.dart';
import '../../member.dart';
import 'where_are.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});
  static String route = '/password/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutButton(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create a password",
              style: h2Bold,
            ),
            const SizedBox(height: 15),
            Text(
              "Make sure your password is 8 or more character and has at least 3 of the following:\n· An uppercase letter\n· A lowercase letter\n· A number\n· A symbol",
              style: paragraphRegular.copyWith(color: grey),
            ),
            const SizedBox(height: 15),
            const TextField(
              decoration: InputDecoration(
                label: Text("Password"),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
        bottomAction: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 20),
          child: ButtonDefaultShared(
            onTap: () {
              Modular.to.pushNamed(OnboardingModule.route +
                  WhereAreYouScreen.route.substring(1));
            },
            title: "Next",
          ),
        ),
      ),
    );
  }
}
