import 'package:flutter/material.dart';

class LayoutButton extends StatelessWidget {
  const LayoutButton({super.key, required this.body, this.bottomAction});

  final Widget body;
  final Widget? bottomAction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Stack(
        children: [
          Positioned.fill(
            child: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: body,
                ),
              ),
            ),
          ),
          if (bottomAction != null)
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: SafeArea(
                child: bottomAction!,
              ),
            ),
        ],
      ),
    );
  }
}
