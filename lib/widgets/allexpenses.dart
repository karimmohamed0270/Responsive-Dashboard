import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/allexpensesheader.dart';

class Allexpenses extends StatelessWidget {
  const Allexpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          children: [
            // 1
            Allexpensesheader(),
          ],
        ),
      ),
    );
  }
}
