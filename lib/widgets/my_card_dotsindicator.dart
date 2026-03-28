import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/my_card_dots.dart';

class MyCardDotsindicator extends StatelessWidget {
  const MyCardDotsindicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) => MyCardDots(isActive : false)),
    );
  }
}