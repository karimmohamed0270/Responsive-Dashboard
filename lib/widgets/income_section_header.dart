import 'package:flutter/material.dart';
import 'package:responesive_dashboard/utils/app_style.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          children: [
            // 1
            Text("Income", style: AppStyles.styleSemiBold20(context)),

            Expanded(child: SizedBox()),

            // 2 button
            Container(
              height: 32,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 235, 229, 229),
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Text("Monthly", style: AppStyles.styleRegular14(context)),
                  SizedBox(width: 12),
                  Icon(
                    Icons.arrow_circle_up_sharp,
                    size: 16,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
