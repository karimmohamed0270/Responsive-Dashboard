import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responesive_dashboard/views/homescreen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const ResponsiveDashboard(),
    ),
  );
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //  FOR DEVICE PREVIEW (LOCALE AND BUILDER)
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const Homescreen(),
    );
  }
}
