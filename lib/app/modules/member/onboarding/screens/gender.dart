import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/shared.dart';
import '../../member.dart';
import '../widgets/item_selection_widget.dart';
import 'screens.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({super.key});
  static String route = '/gender/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutButton(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Birth Sex",
              style: h2Bold,
            ),
            const SizedBox(height: 15),
            Text(
              "To ensure diversity & equity we’d like to welcome everyone equally on our platform.",
              style: paragraphRegular.copyWith(color: grey),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: slate100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Male",
                          style: paragraphRegular,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: slate100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Female",
                          style: paragraphRegular,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            ItemSelection(
              title: "Prefer not to answer",
              active: false,
              onTap: () {},
            ),
            const SizedBox(height: 30),
            const Text(
              "Current Gender",
              style: h2Bold,
            ),
            const SizedBox(height: 15),
            Text(
              "To ensure diversity & equity we’d like to welcome everyone equally on our platform.",
              style: paragraphRegular.copyWith(color: grey),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: slate100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Male",
                          style: paragraphRegular,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: slate100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Female",
                          style: paragraphRegular,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            ItemSelection(
              title: "Non-Binary",
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
                  OnboardingModule.route + MedicalScreen.route.substring(1));
            },
            title: "Next",
          ),
        ),
      ),
    );
  }
}
