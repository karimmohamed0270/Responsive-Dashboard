import 'package:flutter/material.dart';
import 'package:responesive_dashboard/utils/app_style.dart';
import 'package:responesive_dashboard/widgets/custom_text_field.dart';
import 'package:responesive_dashboard/widgets/quick_invoice_form.dart';
import 'package:responesive_dashboard/widgets/quickinvoiceuserinfobuilder.dart';

class LastTransaction extends StatelessWidget {
  const LastTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // header
        Text("Last Transaction", style: AppStyles.styleSemiBold16(context)),
        SizedBox(height: 10),

        // users
        UserInfoBuilder(),

        // divider
        const Divider(thickness: 1, height: 48, color: Colors.grey),

        // textfields
        QuickInvoiceForm(),
      ],
    );
  }
}
