import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

int activeIndex = -1;

class _IncomeChartState extends State<IncomeChart> {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      // first step
      PieChartData(
        //  second step add touch data to make the chart interactive
        pieTouchData: PieTouchData(
          touchCallback: (FlTouchEvent event, pieTouchResponse) {
            setState(() {
              // If the user touches a section of the pie chart, update the activeIndex to highlight it
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            });
          },
        ),
        //  end step 2
        sections: [
          // 1
          PieChartSectionData(
            value: 40,
            color: Colors.blue,
            title: 'Design Services',
            showTitle: false,
            radius: activeIndex == 0 ? 60 : 50, // Increase radius if active
          ),
          // 2
          PieChartSectionData(
            value: 25,
            color: Colors.orange,
            title: 'Design Product%',
            showTitle: false,
            radius: activeIndex == 1 ? 60 : 50, // Increase radius if active
          ),
          // 3
          PieChartSectionData(
            value: 20,
            color: Colors.green,
            title: 'Marketing',
            showTitle: false,
            radius: activeIndex == 2 ? 60 : 50, // Increase radius if active
          ),
          // 4
          PieChartSectionData(
            value: 15,
            color: Colors.red,
            title: 'Other',
            showTitle: false,
            radius: activeIndex == 3 ? 60 : 50, // Increase radius if active),
          ),
        ],
      ),
    );
  }
}
