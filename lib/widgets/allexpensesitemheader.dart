import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responesive_dashboard/models/allexpenses_item.dart';

class Allexpensesitemheader extends StatelessWidget {
  const Allexpensesitemheader({super.key, required this.item});

  final AllexpensesItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: const Color.fromARGB(0, 255, 252, 252),
            child: SvgPicture.asset(item.image),
          ),

          Expanded(child: SizedBox()),

          Icon(Icons.arrow_back, color: Colors.grey),
        ],
      ),
    );
  }
}
