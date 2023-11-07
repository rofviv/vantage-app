import 'package:flutter/foundation.dart';

void printLongText(String text) {
  const int pageSize = 800;
  for (int i = 0; i < text.length; i += pageSize) {
    final endIndex = (i + pageSize < text.length) ? i + pageSize : text.length;
    if (kDebugMode) {
      print(text.substring(i, endIndex));
    }
  }
}