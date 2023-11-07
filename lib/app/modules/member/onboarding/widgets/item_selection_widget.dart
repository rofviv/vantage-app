import 'package:flutter/material.dart';

import '../../../../shared/shared.dart';

class ItemSelection extends StatelessWidget {
  const ItemSelection({
    super.key,
    required this.title,
    required this.active,
    required this.onTap,
  });

  final String title;
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
          color: slate100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: paragraphRegular,
          ),
        ),
      ),
    );
  }
}
