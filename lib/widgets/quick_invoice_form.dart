import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/titletextfield.dart';

//  that contain all textfields of quick invoice form and the button of submit invoice

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Titletextfield(
                textdata: "Customer name",
                hintText: 'Enter customer name',
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Titletextfield(
                textdata: "Customer Email",
                hintText: 'Enter customer email',
              ),
            ),
          ],
        ),

        SizedBox(height: 20),
        //  ROW 2
        Row(
          children: [
            Expanded(
              child: Titletextfield(
                textdata: "Item name",
                hintText: 'Enter item name',
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Titletextfield(
                textdata: "Item Amount",
                hintText: 'Enter item amount',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
