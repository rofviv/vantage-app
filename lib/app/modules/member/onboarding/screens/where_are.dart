import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/shared.dart';
import '../../member.dart';
import 'ethnicity.dart';

class WhereAreYouScreen extends StatelessWidget {
  const WhereAreYouScreen({super.key});
  static String route = '/where-are-you/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutButton(
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Where are you?",
              style: h2Bold,
            ),
            const SizedBox(height: 15),
            Text(
              "Your username will be your unique identity within the community, allowing you to connect",
              style: paragraphRegular.copyWith(color: grey),
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                label: Text("State"),
                suffixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 15),
            const TextField(
              decoration: InputDecoration(
                label: Text("City"),
                suffixIcon: Icon(Icons.search),
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
                  OnboardingModule.route + EthnicityScreen.route.substring(1));
            },
            title: "Next",
          ),
        ),
      ),
    );
  }
}
