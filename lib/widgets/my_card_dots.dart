import 'package:flutter/material.dart';

class MyCardDots extends StatelessWidget {
  const MyCardDots({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: isActive ? 32 : 8,
        height: 8,
        decoration: ShapeDecoration(
          color: isActive ? Colors.blue : Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
