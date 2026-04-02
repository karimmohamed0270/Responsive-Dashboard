import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/income_chart.dart';
import 'package:responesive_dashboard/widgets/income_chart_small_desktop.dart';
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
    //  in desktop layout only change the layout of the income section to show the chart and details side by side
    // when the width change of the screen because the yellow error
    return width >= 1565 && width < 1900
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          )
        : IncomeChartSmallDesktop();
  }
}
