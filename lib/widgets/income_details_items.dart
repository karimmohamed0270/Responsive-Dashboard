import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/incomeDetails.dart';
import 'package:responesive_dashboard/utils/app_style.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailsModel});
  final IncomeDetailsModel incomeDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: incomeDetailsModel.color,
          shape: BoxShape.circle,
        ),
      ),
      title: Text(incomeDetailsModel.title, style: AppStyles.styleSemiBold16),
      subtitle: Text(
        '\$${incomeDetailsModel.amount.toStringAsFixed(2)}',
        style: AppStyles.styleSemiBold16,
      ),
    );
  }
}
