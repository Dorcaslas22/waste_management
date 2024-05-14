import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF0d5c46);
const Color accentColor = Color(0xFFFFC145);
const Color secondaryColor = Color(0xFF041C15);
const Color text1Color = Color(0xFF2F2F2F);
const Color text2Color = Color(0xFF6A6A6A);
const Color text3Color = Color(0xFFC0C0C0);
const Color whiteColor = Color(0xFFFFFFFF);
const Color background1Color = Color(0xFF1FFFB);
const Color background2Color = Color(0xFF041C15);
const Color successColor = Color(0xFF00BE41);
const Color errorColor = Color(0xFFF10000);

class Themes{
  static final light = ThemeData(
      primaryColor: primaryColor,
      brightness: Brightness.light
      );
  static final dark = ThemeData(
  primaryColor: background2Color,
  brightness: Brightness.dark
  );
}