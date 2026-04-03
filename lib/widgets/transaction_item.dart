import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/transaction_item.dart';
import 'package:responesive_dashboard/utils/app_style.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transaction});

  final TransactionItemModel transaction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: const Color.fromARGB(255, 226, 226, 226),
        ),
        child: ListTile(
          title: Text(
            transaction.title,
            style: AppStyles.styleBold16(context).copyWith(color: Colors.black),
          ),
          subtitle: Text(
            transaction.data,
            style: AppStyles.styleSemiBold18(
              context,
            ).copyWith(color: Colors.grey),
          ),
          trailing: Text(
            transaction.amount,
            style: AppStyles.styleBold16(
              context,
            ).copyWith(color: transaction.isIncome ? Colors.blue : Colors.red),
          ),
        ),
      ),
    );
  }
}
