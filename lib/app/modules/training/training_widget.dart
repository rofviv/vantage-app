import 'package:flutter/material.dart';

class TrainingWidget extends StatelessWidget {
  const TrainingWidget({super.key});
  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Training"),
      ),
    );
  }
}
