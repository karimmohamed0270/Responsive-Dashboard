import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChartSmallDesktop extends StatefulWidget {
  const IncomeChartSmallDesktop({super.key});

  @override
  State<IncomeChartSmallDesktop> createState() =>
      _IncomeChartSmallDesktopState();
}

int activeIndex = -1;

class _IncomeChartSmallDesktopState extends State<IncomeChartSmallDesktop> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      //  i use aspect ratio to make pie chart when i put it in a row it will not take all the space
      // and it will be a circle and to be with the deatils in the same line
      aspectRatio: 1,
      child: PieChart(
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
              title: activeIndex == 0 ? 'Design Services' : '40%',
              titlePositionPercentageOffset: activeIndex == 0 ? -1 : null,
              showTitle: true,
              radius: activeIndex == 0 ? 60 : 50, // Increase radius if active
            ),
            // 2
            PieChartSectionData(
              value: 22,
              color: Colors.orange,
              title: activeIndex == 1 ? 'Design Product' : '22%',
              titlePositionPercentageOffset: activeIndex == 1 ? -1 : null,
              showTitle: true,
              radius: activeIndex == 1 ? 60 : 50, // Increase radius if active
            ),
            // 3
            PieChartSectionData(
              value: 15,
              color: Colors.green,
              title: activeIndex == 2 ? 'Marketing' : '15%',
              titlePositionPercentageOffset: activeIndex == 2 ? -1 : null,
              showTitle: true,
              radius: activeIndex == 2 ? 60 : 50, // Increase radius if active
            ),
            // 4
            PieChartSectionData(
              value: 23,
              color: Colors.red,
              title: activeIndex == 3 ? 'Other' : '23%',
              titlePositionPercentageOffset: activeIndex == 3 ? -1 : null,
              showTitle: true,
              radius: activeIndex == 3 ? 60 : 50, // Increase radius if active
            ),
          ],
        ),
      ),
    );
  }
}
