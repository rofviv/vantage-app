import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/shared.dart';
import '../modules.dart';
import 'screens/sign_up_screen.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});
  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: maxWidth(context),
            height: maxHeigt(context),
            child: Image.asset(
              "assets/images/primer-plano.png",
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/icons/MedDefent.svg"),
                        Text(
                          APP_NAME,
                          style: h2Bold.copyWith(
                            color: white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "A New Way to\nNavigate Healthcare",
                      style: h2Bold.copyWith(
                        color: white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    ButtonDefaultShared(
                      title: "Sign Up",
                      onTap: () {
                        Modular.to.pushNamed(
                          LoginModule.route + SignUpScreen.route.substring(1),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: maxHeigt(context) * .06,
                      width: maxWidth(context) * .85,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: white,
                          ),
                          foregroundColor: white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Sign In",
                          style: paragraphBold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
