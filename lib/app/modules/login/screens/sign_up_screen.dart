import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../shared/shared.dart';
import '../../modules.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static String route = '/sign-up/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Choose your role",
            style: h2Bold,
          ),
          SizedBox(
            height: 20,
            width: maxWidth(context),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: maxWidth(context) * .8,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: gradientButton,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SvgPicture.asset("assets/icons/fa6-solid_user.svg"),
                  const SizedBox(height: 15),
                  Text(
                    "I'm a Member",
                    style: leadRegular.copyWith(
                      color: white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Modular.to.pushNamed(OnboardingAdvocateModule.route);
            },
            child: Container(
              width: maxWidth(context) * .8,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: gradientGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SvgPicture.asset("assets/icons/fa6-solid_user-doctor.svg"),
                  const SizedBox(height: 15),
                  Text(
                    "I'm an Advocate",
                    style: leadRegular.copyWith(
                      color: black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: ButtonDefaultShared(
          onTap: () {
            Modular.to.pushNamed(OnboardingModule.route);
          },
          title: "Next",
        ),
      ),
    );
  }
}
