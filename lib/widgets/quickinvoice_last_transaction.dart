import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/user_info_model.dart';
import 'package:responesive_dashboard/utils/appImages.dart';
import 'package:responesive_dashboard/utils/app_style.dart';
import 'package:responesive_dashboard/widgets/user_info_listtile.dart';

class LastTransaction extends StatelessWidget {
  const LastTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Last Transaction", style: AppStyles.styleMedium16),
        SizedBox(height: 10),
      ],
    );
  }
}
