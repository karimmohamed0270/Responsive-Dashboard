import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/drawer_item.dart';
import 'package:responesive_dashboard/utils/appImages.dart';
import 'package:responesive_dashboard/widgets/drawer_item.dart';

class InActiveItemListviewbuilder extends StatelessWidget {
  InActiveItemListviewbuilder({super.key});

  List<DrawerItemModel> inactiveItem = [
    DrawerItemModel(title: "Setting", imagePath: Assets.imagesSettings),

    DrawerItemModel(title: "Logout", imagePath: Assets.imagesLogout),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkWrap: true,
      itemCount: inactiveItem.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: DrawerItem(item: inactiveItem[index]),
        );
      },
    );
  }
}
