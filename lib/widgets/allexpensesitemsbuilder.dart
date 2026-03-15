// import 'package:flutter/material.dart';
// import 'package:responesive_dashboard/models/allexpenses_item.dart';
// import 'package:responesive_dashboard/utils/appImages.dart';
// import 'package:responesive_dashboard/widgets/allexpensesitem.dart';

// class Allexpensesitemsbuilder extends StatelessWidget {
//   Allexpensesitemsbuilder({super.key});

//   List<AllexpensesItemModel> items = [
//     AllexpensesItemModel(
//       title: "Balance",
//       image: Assets.imagesBalance,
//       date: "March 2026",
//       price: "2000\$",
//     ),
//     AllexpensesItemModel(
//       title: "Expenses",
//       image: Assets.imagesExpenses,
//       date: "March 2026",
//       price: "2000\$",
//     ),
//     AllexpensesItemModel(
//       title: "Income",
//       image: Assets.imagesIncome,
//       date: "March 2026",
//       price: "2000\$",
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: items
//           .map((e) => Expanded(child: Allexpensesitem(item: e)))
//           .toList(),
//     );
//   }
// }

import 'package:responesive_dashboard/widgets/allexpensesitem.dart';
import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/allexpenses_item.dart';
import 'package:responesive_dashboard/utils/appImages.dart';

class Allexpensesitemsbuilder extends StatefulWidget {
  const Allexpensesitemsbuilder({super.key});

  @override
  State<Allexpensesitemsbuilder> createState() =>
      _AllexpensesitemsbuilderState();
}

class _AllexpensesitemsbuilderState extends State<Allexpensesitemsbuilder> {
  int selectedIndex = 0;

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
      children: List.generate(
        items.length,
        (index) => Expanded(
          child: Allexpensesitem(
            item: items[index],
            isSelected: selectedIndex == index,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
