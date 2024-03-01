import 'package:flutter/material.dart';

abstract class StyleConstants
{
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;
}

abstract class TextStyleManager {

  static TextStyle textStyleExtraLight = const TextStyle(
    fontWeight: StyleConstants.extraLight,
  );

  static TextStyle textStyleLight = const TextStyle(
    fontWeight: StyleConstants.extraLight,
  );

  static TextStyle textStyleRegular = const TextStyle(
    fontWeight: StyleConstants.regular,
  );

  static TextStyle textStyleMedium = const TextStyle(
    fontWeight: StyleConstants.medium,
  );

  static TextStyle textStyleSemiBold = const TextStyle(
    fontWeight: StyleConstants.semiBold,
  );

  static TextStyle textStyleBold = const TextStyle(
    fontWeight: StyleConstants.bold,
  );

  static TextStyle textStyleExtraBold = const TextStyle(
    fontWeight: StyleConstants.extraBold,
  );

  static TextStyle textStyleBlack = const TextStyle(
    fontWeight: StyleConstants.black,
  );

}
