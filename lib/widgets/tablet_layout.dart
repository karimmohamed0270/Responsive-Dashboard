import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/allexpenses.dart';
import 'package:responesive_dashboard/widgets/custom_drawer.dart';
import 'package:responesive_dashboard/widgets/my_card_and_transaction_section.dart';
import 'package:responesive_dashboard/widgets/quick_invoice.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 1 left side content
        Expanded(child: CustomDrawer()),
        // 2 middle content
        SizedBox(width: 12),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Allexpenses(),
                QuickInvoice(),

                //  scrollable content that the was the left side content in the desktop layout
                MyCardAndTransactionSection(),
              ],
            ),
          ),
        ),
        SizedBox(width: 12),
      ],
    );
  }
}
