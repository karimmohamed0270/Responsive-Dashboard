import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/allexpenses_item.dart';
import 'package:responesive_dashboard/utils/app_style.dart';
import 'package:responesive_dashboard/widgets/allexpensesitemheader.dart';

class Allexpensesitem extends StatelessWidget {
  const Allexpensesitem({super.key, required this.item});

  final AllexpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: ShapeDecoration(
          // color: Color.fromARGB(255, 250, 232, 232),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: const Color.fromARGB(255, 211, 208, 208),
              width: 1,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Allexpensesitemheader(item: item),
              ),
              SizedBox(height: 34),
              Text(item.title, style: AppStyles.styleSemiBold16),
              Text(item.date, style: AppStyles.styleRegular16),
              SizedBox(height: 8),
              Text(item.price, style: AppStyles.styleBold16),
            ],
          ),
        ),
      ),
    );
  }
}
