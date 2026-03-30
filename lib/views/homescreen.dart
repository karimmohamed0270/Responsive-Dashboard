import 'package:flutter/material.dart';
import 'package:responesive_dashboard/utils/app_style.dart';
import 'package:responesive_dashboard/widgets/adapative_layout.dart';
import 'package:responesive_dashboard/widgets/custom_drawer.dart';
import 'package:responesive_dashboard/widgets/desktop_layout.dart';
import 'package:responesive_dashboard/widgets/mobile_layout.dart';
import 'package:responesive_dashboard/widgets/tablet_layout.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFE5E5E5),

      drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,

      //  if mobile open the deawer using app bar and if desktop or tablet show the drawer as a side menu
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: Colors.blue,
              title: Text(
                'Dashboard',
                style: AppStyles.styleBold16.copyWith(color: Colors.white),
              ),
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu, color: Colors.white),
              ),
            )
          : null,

      body: AdapativeLayout(
        mobileBody: (context) => MobileLayout(),
        tabletBody: (context) => TabletLayout(),
        desktopBody: (context) => DesktopLayout(),
      ),
    );
  }
}
