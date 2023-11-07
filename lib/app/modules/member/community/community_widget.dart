import 'package:flutter/material.dart';

class CommunityWidget extends StatelessWidget {
  const CommunityWidget({super.key});
  static String route = '/';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Community"),
      ),
    );
  }
}
