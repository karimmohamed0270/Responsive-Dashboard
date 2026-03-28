import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/transaction_history_header.dart';
import 'package:responesive_dashboard/widgets/transactionitem_builder.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 10),
        TransactionitemBuilder(),
      ],
    );
  }
}
