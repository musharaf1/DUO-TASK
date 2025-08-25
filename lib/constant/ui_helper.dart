import 'package:flutter/material.dart';

class MGTColors {
  static Color accent = const Color(0xFF2E5CEA);
  static Color formError = Colors.red.shade400;
  static Color white = const Color(0xFFCCCCCC);
  static Color bodyLight = const Color(0XFF939BA9);
  static Color header = const Color(0XFF25282B);
  static Color body = const Color(0xFF707B9F);
}

class Styles {
  static of(BuildContext context) {
    return Styles();
  }

  static const KpaddingS = 8.0;
  static const KpaddingM = 16.0;
  static const KpaddingL = 60.0;

  // spacing for app
  static const KspacingS = SizedBox(
    height: 5.0,
  );

  static const KspacingM = SizedBox(
    height: 10.0,
  );
  static const KspacingL = SizedBox(
    height: 15.0,
  );

  static TextStyle boldHeaderTextStyle(BuildContext context, {double? size}) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.w700,
          fontFamily: "CircularStd",
          fontSize: size ?? 26.0,
        );
  }

  static TextStyle semiBoldHeaderTextStyle(BuildContext context,
      {double? size, Color? color}) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.w700,
          fontFamily: "CircularStd",
          fontSize: size ?? 20.0,
          color: color ?? MGTColors.header,
        );
  }

  static TextStyle commonTextStyle(BuildContext context,
      {double? size, Color? color, FontWeight? weight}) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
        fontWeight: weight ?? FontWeight.w400,
        fontFamily: "CircularStd",
        fontSize: size ?? 16,
        color: color ?? MGTColors.bodyLight,
        height: 1.25);
  }
}
