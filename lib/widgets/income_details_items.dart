import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/incomeDetails.dart';
import 'package:responesive_dashboard/utils/app_style.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailsModel});
  final IncomeDetailsModel incomeDetailsModel;

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.sizeOf(context).width.toString());
    return ListTile(
      leading: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: incomeDetailsModel.color,
          shape: BoxShape.circle,
        ),
      ),
      title: Text(
        incomeDetailsModel.title,
        style: AppStyles.styleRegular12.copyWith(color: Colors.black),
      ),
      trailing: Text(
        '\$${incomeDetailsModel.amount.toStringAsFixed(2)}',
        style: AppStyles.styleRegular14.copyWith(color: Colors.black),
      ),
    );
  }
}
