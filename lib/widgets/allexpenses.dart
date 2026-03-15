import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/allexpenses_item.dart';
import 'package:responesive_dashboard/utils/appImages.dart';
import 'package:responesive_dashboard/widgets/allexpensesheader.dart';
import 'package:responesive_dashboard/widgets/allexpensesitem.dart';

class Allexpenses extends StatelessWidget {
  const Allexpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          children: [
            // 1
            Allexpensesheader(),

            SizedBox(height: 20),

            //  items
            Allexpensesitem(
              item: AllexpensesItemModel(
                title: "Balance",
                image: Assets.imagesBalance,
                date: "March 2026",
                price: "2000\$",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
