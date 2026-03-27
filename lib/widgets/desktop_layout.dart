import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/allexpenses.dart';
import 'package:responesive_dashboard/widgets/custom_drawer.dart';
import 'package:responesive_dashboard/widgets/my_card.dart';
import 'package:responesive_dashboard/widgets/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 1 drawer
        Expanded(child: CustomDrawer()),
        // 2 main content
        Expanded(
          child: Column(
            children: [
              // Expanded(child: Allexpenses()),
              // Expanded(child: QuickInvoice()),
              Allexpenses(),
              QuickInvoice(),
            ],
          ),
        ),

        // 3 right side content
        Expanded(child: MyCard()),
      ],
    );
  }
}
