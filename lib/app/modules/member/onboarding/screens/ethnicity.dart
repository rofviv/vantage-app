import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/shared.dart';
import '../../member.dart';
import '../widgets/item_selection_widget.dart';
import 'screens.dart';

class EthnicityScreen extends StatelessWidget {
  const EthnicityScreen({super.key});
  static String route = '/ethnicity/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutButton(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What’s your ethnicity",
              style: h2Bold,
            ),
            const SizedBox(height: 15),
            Text(
              "To ensure diversity & equity we’d like to welcome everyone equally on our platform.",
              style: paragraphRegular.copyWith(color: grey),
            ),
            const SizedBox(height: 30),
            ItemSelection(
              title: "White",
              active: false,
              onTap: () {},
            ),
            const SizedBox(height: 15),
            ItemSelection(
              title: "Black or African American",
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
                  OnboardingModule.route + PronounScreen.route.substring(1));
            },
            title: "Next",
          ),
        ),
      ),
    );
  }
}
