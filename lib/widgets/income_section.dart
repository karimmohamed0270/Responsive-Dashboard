import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/income_chart.dart';
import 'package:responesive_dashboard/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          IncomeSectionHeader(),
          Expanded(
            child: Row(children: [Expanded(child: IncomeChart())]),
          ),
        ],
      ),
    );
  }
}
