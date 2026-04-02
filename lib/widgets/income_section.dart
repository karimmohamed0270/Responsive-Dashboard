import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/income_chart.dart';
import 'package:responesive_dashboard/widgets/income_details.dart';
import 'package:responesive_dashboard/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            IncomeSectionHeader(),

            Expanded(child: InomeSectionBody()),
          ],
        ),
      ),
    );
  }
}

class InomeSectionBody extends StatelessWidget {
  const InomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= 1565
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          )
        : SizedBox();
  }
}
