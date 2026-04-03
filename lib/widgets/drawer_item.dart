import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responesive_dashboard/models/drawer_item.dart';
import 'package:responesive_dashboard/utils/app_style.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.item});
  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.imagePath),
      title: Text(item.title, style: AppStyles.styleMedium16(context)),
    );
  }
}
