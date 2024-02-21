import 'package:flutter/material.dart';
import 'package:pos/core/resources_manager/color_manager.dart';
import 'package:pos/core/resources_manager/size_manager.dart';
import 'package:pos/core/resources_manager/style_manager.dart';

class FormButton extends StatelessWidget {
  const FormButton({super.key, required this.label, required this.onPressed});

  final String label;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        color: ColorsManager.primary,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SizeManager.formButtonRadiusSize)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 17.0),
          child: Text(
            label,
            style: TextStyleManager.textStyleLight.copyWith(
              fontSize: 16,
              color: ColorsManager.white
            ),
          ),
        ),
      ),
    );
  }
}
