import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responesive_dashboard/models/user_info_model.dart';
import 'package:responesive_dashboard/utils/app_style.dart';

class UserInfoListtile extends StatelessWidget {
  const UserInfoListtile({super.key, required this.userinfo});

  final UserInfoModel userinfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 248, 238, 238),
      child: ListTile(
        leading: SvgPicture.asset(userinfo.profileImagePath),
        title: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(userinfo.name, style: AppStyles.styleSemiBold16(context)),
        ),
        subtitle: FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(userinfo.email, style: AppStyles.styleRegular12(context)),
        ),
      ),
    );
  }
}
