import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Progress {
  static Future<void> show(BuildContext context) {
    return showCupertinoModalPopup(
      context: context,
      builder: (_) => WillPopScope(
        child: Material(
          color: Colors.black.withOpacity(0.3),
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
        onWillPop: () async => false,
      ),
    );
  }

  static Future<void> showGift(BuildContext context,
      {String? lottieName, String? text, bool linearProgress = true}) {
    return showCupertinoModalPopup(
      context: context,
      builder: (_) => WillPopScope(
        child: Material(
          color: Colors.white,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (linearProgress) const LinearProgressIndicator(minHeight: 6),
                const SizedBox(height: 150),
                const CircularProgressIndicator(),
                // Lottie.asset(lottieName ?? "assets/lotties/send.json"),
                Text(text ?? "Enviando datos..."),
              ],
            ),
          ),
        ),
        onWillPop: () async => false,
      ),
    );
  }

  static void hide(BuildContext context) {
    Navigator.of(context).pop(context);
  }
}
