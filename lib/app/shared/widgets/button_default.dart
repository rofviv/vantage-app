import 'package:flutter/material.dart';

import '../shared.dart';

class ButtonDefaultShared extends StatelessWidget {
  const ButtonDefaultShared({
    super.key,
    required this.title,
    required this.onTap,
    this.height,
    this.width,
  });

  final String title;
  final Function()? onTap;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? maxHeigt(context) * .06,
      width: width ?? maxWidth(context) * .85,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4),
            blurRadius: 5.0,
          ),
        ],
        gradient: gradientButton,
        color: Colors.deepPurple.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: paragraphBold,
        ),
      ),
    );
  }
}
