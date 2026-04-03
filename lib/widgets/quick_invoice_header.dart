import 'package:flutter/material.dart';
import 'package:responesive_dashboard/utils/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "Quick Invoice",
            style: AppStyles.styleBold16(context).copyWith(color: Colors.black),
          ),
          Expanded(child: SizedBox()),
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey[300],
            child: Icon(Icons.add, color: Colors.white, size: 18),
          ),
        ],
      ),
    );
  }
}
