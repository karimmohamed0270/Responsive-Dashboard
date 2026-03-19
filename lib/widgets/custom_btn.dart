import 'package:flutter/material.dart';
import 'package:responesive_dashboard/utils/app_style.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.data,
    required this.textcolor,
    required this.btncolor,
  });
  final String data;
  final Color textcolor;
  final Color btncolor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: btncolor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      child: Text(
        data,
        style: AppStyles.styleBold16.copyWith(color: textcolor),
      ),
    );
  }
}
