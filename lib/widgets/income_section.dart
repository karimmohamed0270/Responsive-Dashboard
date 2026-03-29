import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [IncomeSectionHeader()]);
  }
}
