import 'package:flutter/material.dart';
import 'package:responesive_dashboard/utils/app_style.dart';
import 'package:responesive_dashboard/widgets/my_card_dotsindicator.dart';
import 'package:responesive_dashboard/widgets/my_card_page_view.dart';

class MycardSection extends StatelessWidget {
  const MycardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: Text(
            "My Cards",
            style: AppStyles.styleBold16.copyWith(color: Colors.black),
          ),
        ),
        SizedBox(height: 10),
        MyCardPageView(),
        SizedBox(height: 20),
        MyCardDotsindicator(),
        SizedBox(height: 20),
      ],
    );
  }
}
