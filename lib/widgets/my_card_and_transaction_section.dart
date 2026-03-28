import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/mycard_section.dart';
import 'package:responesive_dashboard/widgets/transaction_history_section.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, top: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(children: [MycardSection(), TransactionHistorySection()]),
      ),
    );
  }
}
