import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

import '../theme/colors.dart';

void showNotification(String text,
    {required Color foreground, required Color background}) {
  showSimpleNotification(
    Text(
      text,
      style: TextStyle(
        color: foreground,
      ),
    ),
    background: background,
  );
}

void showNotificationSuccess(String text) {
  showSimpleNotification(
    Text(
      text,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
    background: primary,
  );
}

void showNotificationError(String text) {
  showSimpleNotification(
    Text(
      text,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
    background: Colors.red,
  );
}
