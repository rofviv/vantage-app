import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meddefend_app/app/shared/theme/text_style.dart';
import 'package:meddefend_app/app/shared/utils/utils.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});
  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: SvgPicture.asset(
                "assets/icons/Subtract.svg",
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const LinearProgressIndicator(),
                SvgPicture.asset("assets/icons/MedDefent.svg"),
                const Text(
                  APP_NAME,
                  style: h2Bold,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
