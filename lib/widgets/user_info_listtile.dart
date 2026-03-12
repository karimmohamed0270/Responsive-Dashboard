import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return ListTile(
      leading: SvgPicture.asset(imagePath),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
