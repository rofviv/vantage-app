import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/text_style.dart';

class ButtonDefaultShared extends StatelessWidget {
  const ButtonDefaultShared({
    super.key,
    required this.title,
    this.elevation = 0,
    this.width = 250,
    this.color = primary,
    required this.onTap,
  });

  final String title;
  final Color color;
  final Function()? onTap;
  final double elevation, width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 12,
        ),
        elevation: elevation,
        color: color,
        textColor: white,
        disabledColor: grey20,
        disabledTextColor: grey,
        shape: const StadiumBorder(),
        onPressed: onTap,
        child: Text(title, style: paragraphBold),
      ),
    );
  }
}
