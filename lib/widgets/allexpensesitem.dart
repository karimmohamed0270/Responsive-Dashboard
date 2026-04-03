// import 'package:flutter/material.dart';
// import 'package:responesive_dashboard/models/allexpenses_item.dart';
// import 'package:responesive_dashboard/utils/app_style.dart';
// import 'package:responesive_dashboard/widgets/allexpensesitemheader.dart';

// class Allexpensesitem extends StatelessWidget {
//   const Allexpensesitem({super.key, required this.item});

//   final AllexpensesItemModel item;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(12.0),
//       child: Container(
//         decoration: ShapeDecoration(
//           // color: Color.fromARGB(255, 250, 232, 232),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//             side: BorderSide(
//               color: const Color.fromARGB(255, 211, 208, 208),
//               width: 1,
//             ),
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),

//                 // 1 header logo + icon
//                 child: Allexpensesitemheader(item: item),
//               ),
//               SizedBox(height: 34),

//               // 2 data of the item
//               Text(item.title, style: AppStyles.styleSemiBold16),
//               Text(item.date, style: AppStyles.styleRegular16),
//               SizedBox(height: 8),
//               Text(item.price, style: AppStyles.styleBold16),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:responesive_dashboard/models/allexpenses_item.dart';
import 'package:responesive_dashboard/utils/app_style.dart';
import 'package:responesive_dashboard/widgets/allexpensesitemheader.dart';

class Allexpensesitem extends StatelessWidget {
  const Allexpensesitem({
    super.key,
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  final AllexpensesItemModel item;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: ShapeDecoration(
            color: isSelected ? Colors.blue : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                color: const Color.fromARGB(255, 211, 208, 208),
                width: 1,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  // 1 header logo + icon with dynamic color based on selection
                  child: Allexpensesitemheader(
                    item: item,
                    // pass the isSelected property to the  allexpensesitemheader to change the logo color
                    isSelected: isSelected,
                  ),
                ),

                const SizedBox(height: 34),

                Text(
                  item.title,
                  style: AppStyles.styleSemiBold16(
                    context,
                  ).copyWith(color: isSelected ? Colors.white : Colors.black),
                ),

                Text(
                  item.date,
                  style: AppStyles.styleRegular16(
                    context,
                  ).copyWith(color: isSelected ? Colors.white : Colors.grey),
                ),

                const SizedBox(height: 8),

                Text(
                  item.price,
                  style: AppStyles.styleBold16(
                    context,
                  ).copyWith(color: isSelected ? Colors.white : Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
