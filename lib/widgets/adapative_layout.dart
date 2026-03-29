import 'package:flutter/material.dart';

class AdapativeLayout extends StatelessWidget {
  final WidgetBuilder mobileBody;
  final WidgetBuilder tabletBody;
  final WidgetBuilder desktopBody;

  const AdapativeLayout({
    super.key,
    required this.mobileBody,
    required this.tabletBody,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileBody(context);
          // 900 is the breakpoint for tablets but is not a fixed rule
        } else if (constraints.maxWidth < 1200) {
          return tabletBody(context);
        } else {
          return desktopBody(context);
        }
      },
    );
  }
}
