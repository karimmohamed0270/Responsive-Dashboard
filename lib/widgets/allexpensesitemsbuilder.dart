import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/allexpenses_item.dart';
import 'package:responesive_dashboard/utils/appImages.dart';
import 'package:responesive_dashboard/widgets/allexpensesitem.dart';

class Allexpensesitemsbuilder extends StatelessWidget {
  Allexpensesitemsbuilder({super.key});

  List<AllexpensesItemModel> items = [
    AllexpensesItemModel(
      title: "Balance",
      image: Assets.imagesBalance,
      date: "March 2026",
      price: "2000\$",
    ),
    AllexpensesItemModel(
      title: "Expenses",
      image: Assets.imagesExpenses,
      date: "March 2026",
      price: "2000\$",
    ),
    AllexpensesItemModel(
      title: "Income",
      image: Assets.imagesIncome,
      date: "March 2026",
      price: "2000\$",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .map((e) => Expanded(child: Allexpensesitem(item: e)))
          .toList(),
    );
  }
}
