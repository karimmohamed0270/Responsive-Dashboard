import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/drawer_item.dart';
import 'package:responesive_dashboard/models/user_info_model.dart';
import 'package:responesive_dashboard/utils/appImages.dart';
import 'package:responesive_dashboard/widgets/drawer_item.dart';
import 'package:responesive_dashboard/widgets/draweritem_listview.dart';
import 'package:responesive_dashboard/widgets/inactivedraweritembuilder.dart';
import 'package:responesive_dashboard/widgets/user_info_listtile.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  List<DrawerItemModel> inactiveItem = [
    DrawerItemModel(title: "Setting", imagePath: Assets.imagesSettings),

    DrawerItemModel(title: "Logout", imagePath: Assets.imagesLogout),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 247, 247),
      child: CustomScrollView(
        slivers: [
          // 1  card for user info
          SliverToBoxAdapter(
            child: UserInfoListtile(
              userinfo: UserInfoModel(
                name: "Karim Mohamed",
                email: "karim7756@gmail.com",
                profileImagePath: Assets.imagesAvatar1,
              ),
            ),
          ),

          // 2 lsit view of bulider of each drawer item
          DrawerItemListViewBuilder(),

          // // 3  size box with expend to take all the remaining space in the drawer to push the logout button to the bottom of the drawer
          //  4 in active drawer item
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                //3
                Expanded(child: SizedBox()),
                // 4
                DrawerItem(item: inactiveItem[0]),
                DrawerItem(item: inactiveItem[1]),
                SizedBox(height: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
