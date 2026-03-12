import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responesive_dashboard/utils/app_style.dart';

class UserInfoListtile extends StatelessWidget {
  const UserInfoListtile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  final String title;
  final String subtitle;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 248, 238, 238),
      child: ListTile(
        leading: SvgPicture.asset(imagePath),
        title: Text(title, style: AppStyles.styleSemiBold16),
        subtitle: Text(subtitle, style: AppStyles.styleRegular12),
      ),
    );
  }
}
