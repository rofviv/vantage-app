import 'package:flutter/material.dart';

import '../theme/colors.dart';

abstract class BottomSheep {
  static void show(
    BuildContext context, {
    required Widget child,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              height: 4,
              width: 50,
              decoration: BoxDecoration(
                color: grey,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child,
          ],
        ),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      backgroundColor: white,
    );
  }
}
