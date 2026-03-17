import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/user_info_model.dart';
import 'package:responesive_dashboard/utils/appImages.dart';
import 'package:responesive_dashboard/widgets/user_info_listtile.dart';

class UserInfoBuilder extends StatelessWidget {
  UserInfoBuilder({super.key});

  List<UserInfoModel> usersinfomoedl = [
    UserInfoModel(
      name: "Karim Mohamed",
      email: "karim7756@gmail.com",
      profileImagePath: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      name: "Ahmed Mohamed",
      email: "ahmed76@gmail.com",
      profileImagePath: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      name: " Mohamed Omar",
      email: "omar756@gmail.com",
      profileImagePath: Assets.imagesAvatar1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: usersinfomoedl.length,
      itemBuilder: (context, index) {
        return UserInfoListtile(userinfo: usersinfomoedl[index]);
      },
    );
  }
}
