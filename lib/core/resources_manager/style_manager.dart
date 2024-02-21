import 'package:flutter/material.dart';

abstract class StyleConstants
{
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight light = FontWeight.w300;
}

abstract class TextStyleManager {

  static TextStyle textStyleExtraBold = const TextStyle(
    fontWeight: StyleConstants.extraBold,
  );

  static TextStyle textStyleBold = const TextStyle(
    fontWeight: StyleConstants.bold,
  );

  static TextStyle textStyleRegular = const TextStyle(
    fontWeight: StyleConstants.regular,
  );

  static TextStyle textStyleLight = const TextStyle(
    fontWeight: StyleConstants.light,
  );


}
