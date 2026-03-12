import 'package:flutter/material.dart';
import 'package:responesive_dashboard/widgets/adapative_layout.dart';
import 'package:responesive_dashboard/widgets/desktop_layout.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdapativeLayout(
        mobileBody: (context) => SizedBox(),
        tabletBody: (context) => SizedBox(),
        desktopBody: (context) => DesktopLayout(),
      ),
    );
  }
}
