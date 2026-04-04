import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responesive_dashboard/models/allexpenses_item.dart';

class Allexpensesitemheader extends StatelessWidget {
  const Allexpensesitemheader({
    super.key,
    required this.item,
    required this.isSelected,
  });

  final AllexpensesItemModel item;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Flexible(
            child: CircleAvatar(
              radius: 20,
              backgroundColor: const Color.fromARGB(0, 255, 252, 252),
              child: SvgPicture.asset(
                item.image,
                color: isSelected ? Colors.white : Colors.blue,
              ),
            ),
          ),

          Expanded(child: SizedBox()),

          Flexible(
            child: Icon(
              Icons.arrow_back,
              color: isSelected ? Colors.white : Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
