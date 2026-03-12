import 'package:flutter/material.dart';
import 'package:responesive_dashboard/utils/appImages.dart';
import 'package:responesive_dashboard/widgets/user_info_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 247, 247),
      child: Column(
        children: [
          UserInfoListtile(
            title: "Karim Mohamed",
            subtitle: "karim7756@gmail.com",
            imagePath: Assets.imagesAvatar1,
          ),
        ],
      ),
    );
  }
}
