import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//  use style organizer plugin in figma to get this sytles
// abstract class AppStyles {
// static const TextStyle styleRegular16 = TextStyle(
//   color: Color(0xFF064060),
//   fontSize: 16,
//   fontFamily: 'Montserrat',
//   fontWeight: FontWeight.w400,
// ); // TextStyle

// static const TextStyle styleMedium16 = TextStyle(
//   color: Color(0xFF064061),
//   fontSize: 16,
//   fontFamily: 'Montserrat',
//   fontWeight: FontWeight.w500,
// ); // TextStyle

// static const TextStyle styleSemiBold16 = TextStyle(
//   color: Color(0xFF064061),
//   fontSize: 16,
//   fontFamily: 'Montserrat',
//   fontWeight: FontWeight.w600,
// ); // TextStyle

// static const TextStyle styleSemiBold20 = TextStyle(
//   color: Color(0xFF064061),
//   fontSize: 20,
//   fontFamily: 'Montserrat',
//   fontWeight: FontWeight.w600,
// ); // TextStyle

// static const TextStyle styleRegular14 = TextStyle(
//   color: Color(0xFFAAAAAA),
//   fontSize: 14,
//   fontFamily: 'Montserrat',
//   fontWeight: FontWeight.w400,
// ); // TextStyle

// static const TextStyle styleSemiBold18 = TextStyle(
//   color: Color(0xFF4EB7F2),
//   fontSize: 18,
//   fontFamily: 'Montserrat',
//   fontWeight: FontWeight.w600,
// ); // TextStyle

// static const TextStyle styleRegular12 = TextStyle(
//   color: Color(0xFFAAAAAA),
//   fontSize: 12,
//   fontFamily: 'Montserrat',
//   fontWeight: FontWeight.w400,
// );
// static const TextStyle styleBold16 = TextStyle(
//   color: Color(0xFF4EB7F2),
//   fontSize: 16,
//   fontFamily: 'Montserrat',
//   fontWeight: FontWeight.w700,
// ); // TextStyle

// static const TextStyle styleMedium20 = TextStyle(
//   color: Color(0xFFFFFFFF),
//   fontSize: 20,
//   fontFamily: 'Montserrat',
//   fontWeight: FontWeight.w500,
// )}; // TextStyle // TextStyle

//   convert the app styles to functions to make them responsive because context
abstract class AppStyles {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
}

// responsive font size

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // var dispatcher= PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;

  if (width < 800) {
    //  800 is the width of the mobile breakpoint but is not a fixed rule in the adaptive layout widget
    return width / 600;
  } else if (width < 1200) {
    //  1200 is the width of the tablet breakpoint but is not a fixed rule in the adaptive layout widget
    return width / 1000;
  } else {
    return width / 1700;
  }
}
