import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';

/// Theme
///
class AppTheme {
  AppTheme._();

  static final ThemeData themeData = ThemeData(
    fontFamily: 'inter',
    scaffoldBackgroundColor: Palette.backgroundColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      shape: CircleBorder(),
      // backgroundColor: Palette.iconColor,
    ),
    appBarTheme:
        const AppBarTheme(elevation: 0, backgroundColor: Colors.transparent),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        // backgroundColor: Palette.buttonColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: displayLargeMedium,
      displayMedium: displayMediumBold,
      displaySmall: displaySmallMedium,
      bodyLarge: textLargeRegular,
      bodyMedium: textMediumRegular,
      bodySmall: textSmallRegular,
      labelSmall: textSmallMedium,
      titleLarge: textLargeBold,
      titleSmall: textSmallBold,
    ).apply(fontSizeFactor: 1.sp),
  );

  static TextStyle displayLargeBold = GoogleFonts.inter(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    height: 1.5,
    color: Palette.textColor,
  );
  static TextStyle displayLargeMedium = GoogleFonts.inter(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.18,
    color: Palette.textColor,
  );
  static TextStyle displayMediumBold = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.38,
    color: Palette.textColor,
  );

  static TextStyle displaySmallBold = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.5,
    color: Palette.textColor,
  );
  static TextStyle displaySmallMedium = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 1.5,
    color: Palette.textColor,
  );
  static TextStyle textLargeBold = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    height: 1.5,
    color: Palette.textColor,
  );

  static TextStyle textLargeRegular = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: Palette.textColor,
  );
  static TextStyle textMediumBold = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.38,
    color: Palette.textColor,
  );

  static TextStyle textMediumRegular = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.38,
    color: Palette.textColor,
  );
  static TextStyle textSmallBold = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.36,
    color: Palette.textColor,
  );
  static TextStyle textSmallMedium = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.36,
    color: Palette.textColor,
  );
  static TextStyle textSmallRegular = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.36,
    color: Palette.textColor,
  );
}
