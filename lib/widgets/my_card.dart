import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responesive_dashboard/utils/appImages.dart';
import 'package:responesive_dashboard/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 180,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.blue,
          image: DecorationImage(
            // decoration image  take asset image (png) not take svg image
            image: AssetImage(Assets.imagesCardBackground),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //1 ListTile
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 24),
              child: ListTile(
                title: Text('Karim Mohamed', style: AppStyles.styleMedium20),
                subtitle: Text(
                  'Card 1 ',
                  style: AppStyles.styleBold16.copyWith(color: Colors.white),
                ),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
            ),

            //2 space to take all the space between listtile and text
            Expanded(child: SizedBox()),

            //3
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                children: [
                  Text(
                    '12345 6789 1234 5678',
                    style: AppStyles.styleBold16.copyWith(color: Colors.white),
                  ),
                  Text(
                    '6/27 - 361',
                    style: AppStyles.styleMedium20.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
