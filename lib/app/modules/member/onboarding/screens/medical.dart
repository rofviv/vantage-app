import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/shared.dart';
import '../../member.dart';
import 'screens.dart';

class MedicalScreen extends StatelessWidget {
  const MedicalScreen({super.key});
  static String route = '/medical/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text("Skip"),
          ),
        ],
      ),
      body: LayoutButton(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Previous Medical Records",
              style: h2Bold,
            ),
            const SizedBox(height: 15),
            Text(
              "To ensure diversity & equity we’d like to welcome everyone equally on our platform.",
              style: paragraphRegular.copyWith(color: grey),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: maxWidth(context),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: slate900,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upload new file",
                      style: paragraphBold.copyWith(color: white),
                    ),
                    const Icon(
                      Icons.upload,
                      color: white,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            //
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
