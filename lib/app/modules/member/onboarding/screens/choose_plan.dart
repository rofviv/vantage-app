import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:meddefend_app/app/modules/member/onboarding/screens/phone_number.dart';
import 'package:meddefend_app/app/modules/modules.dart';
import 'package:meddefend_app/app/shared/shared.dart';

class ChoosePlanScreen extends StatelessWidget {
  const ChoosePlanScreen({super.key});
  static String route = '/choose-plan/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Text(
                "Choose Your Plan",
                style: h2Bold,
              ),
              const SizedBox(height: 15),
              Text(
                "Choose the plan that best suits your medical appointment needs and enjoy a premium experience on our platform",
                style: paragraphRegular.copyWith(color: grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              ItemPlan(
                title: "Basic",
                price: "99",
                options: const [
                  "5 Advocate calls",
                  "Access to health communities",
                  "1 Emergency Service Call",
                ],
                active: false,
                onTap: () {},
              ),
              const SizedBox(height: 15),
              ItemPlan(
                title: "Premium",
                price: "149",
                options: const [
                  "10 Advocate calls",
                  "Access to health communities",
                  "3 Emergency Service Call",
                ],
                active: true,
                onTap: () {},
              ),
              const SizedBox(height: 15),
              ItemPlan(
                title: "Plus",
                price: "249",
                options: const [
                  "20 Advocate calls",
                  "Access to health communities",
                  "5 Emergency Service Call",
                ],
                active: false,
                onTap: () {},
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: ButtonDefaultShared(
          onTap: () {
            Modular.to.pushNamed(
                OnboardingModule.route + PhoneNumberScreen.route.substring(1));
          },
          title: "Next",
        ),
      ),
    );
  }
}

class ItemPlan extends StatelessWidget {
  const ItemPlan({
    super.key,
    required this.title,
    required this.price,
    required this.options,
    required this.active,
    required this.onTap,
  });

  final String title;
  final String price;
  final List<String> options;
  final bool active;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: maxWidth(context),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: active ? gradientButton : null,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: grey20,
          ),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: leadBold.copyWith(
                color: active ? white : null,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$$price",
                  style: leadBold.copyWith(
                    color: active ? white : null,
                  ),
                ),
                Text(
                  "/Year",
                  style: paragraphRegular.copyWith(
                    color: active ? white : null,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...options.map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 15,
                          color: active ? white : null,
                        ),
                        const SizedBox(width: 15),
                        Text(
                          e,
                          style: paragraphRegular.copyWith(
                            color: active ? white : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
