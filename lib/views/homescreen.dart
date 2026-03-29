import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/adapative_layout.dart';
import 'package:responesive_dashboard/widgets/desktop_layout.dart';
import 'package:responesive_dashboard/widgets/tablet_layout.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: AdapativeLayout(
        mobileBody: (context) => SizedBox(),
        tabletBody: (context) => TabletLayout(),
        desktopBody: (context) => DesktopLayout(),
      ),
    );
  }
}
