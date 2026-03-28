import 'package:flutter/material.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Transaction History",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Expanded(child: SizedBox()),
        Text("See All", style: TextStyle(fontSize: 14, color: Colors.blue)),
      ],
    );
  }
}
