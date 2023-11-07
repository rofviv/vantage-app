import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/shared.dart';
import '../../member.dart';
import '../widgets/item_selection_widget.dart';
import 'screens.dart';

class PronounScreen extends StatelessWidget {
  const PronounScreen({super.key});
  static String route = '/pronoun/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutButton(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Please Select Your Pronoun",
              style: h2Bold,
            ),
            const SizedBox(height: 15),
            Text(
              "Select the pronoun that best reflects your gender identity. We respect and support a wide range of pronouns to create an inclusive experience for everyone in our community.",
              style: paragraphRegular.copyWith(color: grey),
            ),
            const SizedBox(height: 30),
            ItemSelection(
              title: "He / him / his",
              active: false,
              onTap: () {},
            ),
            const SizedBox(height: 15),
            ItemSelection(
              title: "She / her / hers",
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
              Modular.to.pushNamed(
                  OnboardingModule.route + GenderScreen.route.substring(1));
            },
            title: "Next",
          ),
        ),
      ),
    );
  }
}
