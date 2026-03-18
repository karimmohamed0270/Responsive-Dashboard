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
    // important note: we have a problem here because we want to use listview inside column and this will cause an error because listview has infinite height and column has infinite height so we will solve this problem by giving the listview a fixed height using sizedbox and we will use intrinsicwidth to solve the problem of listtile width because listtile has infinite width and this will cause an error because listview has infinite width so we will solve this problem by giving the listtile a fixed width using intrinsicwidth
    // to solve the problem of listview inside column we will use sizedbox to give it a height and we will use intrinsicwidth to solve the problem of listtile width
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: usersinfomoedl.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserInfoListtile(userinfo: usersinfomoedl[index]),
          );
        },
      ),
    );
  }
}
