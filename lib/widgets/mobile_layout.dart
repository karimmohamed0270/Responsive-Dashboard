import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/allexpenses.dart';
import 'package:responesive_dashboard/widgets/income_section_fortablet.dart';
import 'package:responesive_dashboard/widgets/my_card_and_transaction_section.dart';
import 'package:responesive_dashboard/widgets/quick_invoice.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Allexpenses(),
            QuickInvoice(),

            //  scrollable content that the was the left side content in the desktop layout
            MyCardAndTransactionSection(),
            IncomeSectionTablet(),
          ],
        ),
      ),
    );
  }
}
