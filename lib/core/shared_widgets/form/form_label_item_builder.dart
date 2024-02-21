import 'package:flutter/material.dart';
import 'package:pos/core/resources_manager/color_manager.dart';
import 'package:pos/core/resources_manager/size_manager.dart';
import 'package:pos/core/resources_manager/style_manager.dart';

class FormLabelItemBuilder extends StatelessWidget {
  const FormLabelItemBuilder({
    super.key,
    required this.label,
    required this.isRequired
  });

  final String label;
  final bool isRequired;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyleManager.textStyleLight.copyWith(
            fontSize: SizeManager.formLabelSize,
            color: ColorsManager.black,
          ),
        ),
        if(isRequired)
          Text(
            ' * ',
            style: TextStyleManager.textStyleLight.copyWith(
              fontSize: SizeManager.formLabelSize,
              color: ColorsManager.red,
            ),
          ),
      ],
    );
  }
}
