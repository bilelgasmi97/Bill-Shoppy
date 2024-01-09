import 'package:flutter/material.dart';

class TColors {
  TColors._();

  // App Static Colors
  static const Color primary = Color(0XFF4B68FF);
  static const Color secondary = Color(0XFFFFE248);
  static const Color accent = Color(0XFFb0c7ff);

  //Gradient Colors
  static const Gradient LinerGadient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.77, -0.707),
      colors: [
        Color(0xFFFF9a9e),
        Color(0xFFFad0c4),
        Color(0xFFFad0c4),
      ]);

  //text Colors
  static const Color textPrimary = Color(0XFF333333);
  static const Color textSecondary = Color(0XFF6c7570);
  static const Color textWhite = Colors.white;

  //background Colors
  static const Color light = Color(0XFFF6F6F6);
  static const Color dark = Color(0XFF272727);
  static const Color primaryBackground = Color(0XFFF3F5FF);

  //background Container Colors
  static const Color lightContainer = Color(0XFFF6F6F6);
  /* static const Color darkContainer = TColors.white.withOpacity(0.1); */

  // Button colors
  static const Color buttonPrimary = Color(0XFFF6F6F6);
  static const Color buttonSecondary = Color(0XFFF6F6F6);
  static const Color buttonDisabled = Color(0XFFF6F6F6);

  // Border Colors
  static const Color borderPrimary = Color(0XFFF6F6F6);
  static const Color borderSecondary = Color(0XFFF6F6F6);

  // Error and Validation Color
  static const Color error = Color(0XFFF6F6F6);
  static const Color succes = Color(0XFFF6F6F6);
  static const Color warning = Color(0XFFF6F6F6);
  static const Color info = Color(0XFFF6F6F6);

  // Neural Shades
  static const Color black = Color(0XFF272727);
  static const Color darkerGrey = Color(0XFFF6F6F6);
  static const Color darkGrey = Color(0XFFF6F6F6);
  static const Color grey = Color(0XFFF6F6F6);
}
