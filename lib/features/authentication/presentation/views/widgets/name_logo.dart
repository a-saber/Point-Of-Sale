import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/core/localization/translation_key_manager.dart';
import 'package:pos/core/resources_manager/assets_manager.dart';
import 'package:pos/core/resources_manager/color_manager.dart';
import 'package:pos/core/resources_manager/constants_manager.dart';
import 'package:pos/core/resources_manager/style_manager.dart';

class NameLogo extends StatelessWidget {
  const NameLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        Text(
          TranslationKeyManager.appTitle.tr,
          style: TextStyleManager.textStyleExtraBold.copyWith(
            fontSize: 25,
            color: ColorsManager.black,
          ),
        ),
        const SizedBox(width: 12),
        Image.asset(
          AssetsManager.logo,
          width: 40,
          height: 40,
        ),
      ],
    );
  }
}
