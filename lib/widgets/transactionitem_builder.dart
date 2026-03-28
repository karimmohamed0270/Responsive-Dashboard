import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/transaction_item.dart';
import 'package:responesive_dashboard/widgets/transaction_item.dart';

class TransactionitemBuilder extends StatelessWidget {
  TransactionitemBuilder({super.key});

  List<TransactionItemModel> transactionItems = [
    TransactionItemModel(
      title: "Salary",
      data: "May 1, 2024",
      amount: "+\$5000",
      isIncome: true,
    ),
    TransactionItemModel(
      title: "Groceries",
      data: "May 2, 2024",
      amount: "-\$150",
      isIncome: false,
    ),
    TransactionItemModel(
      title: "Electricity Bill",
      data: "May 3, 2024",
      amount: "-\$100",
      isIncome: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: transactionItems.length,
      itemBuilder: (context, index) =>
          TransactionItem(transaction: transactionItems[index]),
    );
  }
}
