import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/transaction_item.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transaction});

  final TransactionItemModel transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: const Color.fromARGB(255, 226, 226, 226),
      ),
      child: ListTile(
        title: Text(transaction.title),
        subtitle: Text(transaction.data),
        trailing: Text(
          transaction.amount,
          style: TextStyle(
            color: transaction.isIncome ? Colors.blue : Colors.red,
          ),
        ),
      ),
    );
  }
}
