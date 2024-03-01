import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/core/localization/translation_key_manager.dart';
import 'package:pos/core/resources_manager/color_manager.dart';
import 'package:pos/core/resources_manager/style_manager.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${TranslationKeyManager.welcome.tr} 👋',
      style: TextStyleManager.textStyleLight.copyWith(
        fontSize: 16,
        color: ColorsManager.grey,
      ),
    );
  }
}
