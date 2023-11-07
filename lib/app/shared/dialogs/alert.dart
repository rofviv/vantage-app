import 'package:flutter/material.dart';

import '../theme/text_style.dart';

abstract class Alert {
  static Future<void> show(
    BuildContext context, {
    required String title,
    String? content,
  }) {
    return showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(
          title,
          style: paragraphBold,
        ),
        content: Text(
          content ?? "",
          style: smallBold,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Ok"),
          ),
        ],
      ),
    );
  }
}
