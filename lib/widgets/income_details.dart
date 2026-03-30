import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/incomeDetails.dart';
import 'package:responesive_dashboard/widgets/income_details_items.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  List<IncomeDetailsModel> getIncomeDetails() {
    return const [
      IncomeDetailsModel(title: 'Salary', amount: 5000, color: Colors.green),
      IncomeDetailsModel(title: 'Freelance', amount: 2000, color: Colors.blue),
      IncomeDetailsModel(
        title: 'Investments',
        amount: 1500,
        color: Colors.orange,
      ),
      IncomeDetailsModel(title: 'Other', amount: 500, color: Colors.red),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: getIncomeDetails().length,
      itemBuilder: (context, index) {
        return IncomeDetailsItem(incomeDetailsModel: getIncomeDetails()[index]);
      },
    );
  }
}
