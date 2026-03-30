import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/income_chart.dart';
import 'package:responesive_dashboard/widgets/income_details.dart';
import 'package:responesive_dashboard/widgets/income_section_header.dart';

class IncomeSectionTablet extends StatelessWidget {
  const IncomeSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            IncomeSectionHeader(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: IncomeChart()),
                Expanded(child: IncomeDetails()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
