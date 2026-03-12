import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/drawer_item.dart';
import 'package:responesive_dashboard/utils/appImages.dart';
import 'package:responesive_dashboard/widgets/drawer_item.dart';

class DrawerItemListViewBuilder extends StatefulWidget {
  DrawerItemListViewBuilder({super.key});

  @override
  State<DrawerItemListViewBuilder> createState() =>
      _DrawerItemListViewBuilderState();
}

class _DrawerItemListViewBuilderState extends State<DrawerItemListViewBuilder> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(
      title: "Dashboard",
      imagePath: Assets.imagesDashboard,
    ),
    const DrawerItemModel(
      title: "Transactions",
      imagePath: Assets.imagesMyTransctions,
    ),
    const DrawerItemModel(
      title: "Statistics",
      imagePath: Assets.imagesStatistics,
    ),
    const DrawerItemModel(
      title: "Wallet Account",
      imagePath: Assets.imagesWalletAccount,
    ),
    const DrawerItemModel(
      title: "Investment",
      imagePath: Assets.imagesMyInvestments,
    ),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              //  when i click on any item in the drawer it will change the active index to this item index
              activeIndex = index;

              // print(activeIndex);
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(item: items[index]),
          ),
        );
      },
    );
  }
}
