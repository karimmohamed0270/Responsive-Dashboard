import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/allexpenses.dart';
import 'package:responesive_dashboard/widgets/custom_drawer.dart';
import 'package:responesive_dashboard/widgets/income_section.dart';
import 'package:responesive_dashboard/widgets/my_card_and_transaction_section.dart';
import 'package:responesive_dashboard/widgets/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 1 drawer
        Expanded(child: CustomDrawer()),

        //  2 main content and 3 right side content to scrool them together  to make desktop layout more user friendly and to make the content more accessible for the user
        Expanded(
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    // 2 main content
                    Expanded(
                      flex: 3,
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
                    // Expanded(child: MycardSection()),
                    // Expanded(child: IncomeSection()),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          MyCardAndTransactionSection(),
                          SizedBox(height: 5),
                          Expanded(child: IncomeSection()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
