import 'package:flutter/material.dart';

abstract class Confirm {
  static Future<bool> show(
    BuildContext context, {
    required String title,
    required String content,
    String textCancel = "No",
    String textConfirm = "Yes",
  }) async {
    bool sw = false;
    await showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(textCancel),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              sw = true;
            },
            child: Text(textConfirm),
          ),
        ],
      ),
    );
    return sw;
  }
}
