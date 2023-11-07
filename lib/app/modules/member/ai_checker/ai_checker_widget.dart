import 'package:flutter/material.dart';

class AICheckerWidget extends StatelessWidget {
  const AICheckerWidget({super.key});
  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("AI Checker"),
      ),
    );
  }
}
