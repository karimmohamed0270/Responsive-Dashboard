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
        } else if (constraints.maxWidth < 900) {
          return tabletBody(context);
        } else {
          return desktopBody(context);
        }
      },
    );
  }
}
