import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});
  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Dashboard"),
      ),
    );
  }
}
