import 'package:flutter/material.dart';

import '../../theme/text_style.dart';

class HeaderDefaultShared extends StatelessWidget {
  const HeaderDefaultShared({
    super.key,
    required this.title,
    required this.onClose,
  });
  final String title;
  final Function()? onClose;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: h2Bold,
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: onClose,
            icon: const Icon(
              Icons.close,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
