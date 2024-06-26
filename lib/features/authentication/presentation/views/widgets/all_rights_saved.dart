import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/core/localization/translation_key_manager.dart';
import 'package:pos/core/resources_manager/color_manager.dart';
import 'package:pos/core/resources_manager/style_manager.dart';

class AllRightsSaved extends StatelessWidget {
  const AllRightsSaved({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        const Spacer(),
        const SizedBox(height: 20,),
        Text(
          '${TranslationKeyManager.allRightsReserved.tr} ©️ 2024',
          style: TextStyleManager.textStyleRegular.copyWith(
            fontSize: 14,
            color: ColorsManager.grey2,
          ),
        ),
        const SizedBox(height: 20,),

      ],
    );
  }
}
