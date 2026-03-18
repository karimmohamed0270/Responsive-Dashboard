import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/quick_invoice_header.dart';
import 'package:responesive_dashboard/widgets/quickinvoice_last_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          children: [
            // header
            QuickInvoiceHeader(),

            SizedBox(height: 20),
            //  last transaction section
            LastTransaction(),
          ],
        ),
      ),
    );
  }
}
