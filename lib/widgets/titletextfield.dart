import 'package:flutter/material.dart';
import 'package:responesive_dashboard/utils/app_style.dart';
import 'package:responesive_dashboard/widgets/custom_text_field.dart';

class Titletextfield extends StatelessWidget {
  const Titletextfield({
    super.key,
    required this.textdata,
    required this.hintText,
  });
  final String textdata;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //1 title
        Text(textdata, style: AppStyles.styleSemiBold16),
        //2 textfield
        CustomTextField(hintText: hintText),
      ],
    );
  }
}
