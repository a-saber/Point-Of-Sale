import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'constants_manager.dart';

class ThemeManager {
  static final light = ThemeData.light().copyWith(
    colorScheme: ThemeData().colorScheme.copyWith(
      primary: ColorsManager.primary,
      error: ColorsManager.red,
    ),
    scaffoldBackgroundColor: ColorsManager.white,
    primaryColor: ColorsManager.primary,
    iconTheme: const IconThemeData(color: ColorsManager.primary),
    textTheme: Typography().black.apply(
      fontFamily: ConstantsManager.fontFamily,
    ),
    brightness: Brightness.light,
  );

  static final dark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: ColorsManager.black.withOpacity(0.5),
    primaryColor: ColorsManager.primary,
    iconTheme: const IconThemeData(color: ColorsManager.white),
    textTheme: Typography().white.apply(
      fontFamily: ConstantsManager.fontFamily,
    ),
    brightness: Brightness.dark,
  );

}
