import 'package:flutter/material.dart';
import 'package:pos/core/resources_manager/color_manager.dart';
import 'package:pos/core/resources_manager/size_manager.dart';
import 'package:pos/core/resources_manager/style_manager.dart';

class FormFieldItemBuilder extends StatelessWidget {
  const FormFieldItemBuilder({
    super.key,
    required this.isRequired,
    required this.label,
    required this.controller,
    this.textInputType = TextInputType.text,
    this.onChange,
    this.prefix,
    this.suffix,
  });

  final bool isRequired;
  final void Function(String)? onChange;
  final Widget? suffix;
  final Widget? prefix;
  final String label;
  final TextEditingController controller;
  final TextInputType textInputType;
  final double borderRadius = SizeManager.formFieldRadiusSize;


  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: ColorsManager.primary,
      ),
      child: TextFormField(
        validator: (value) {
          if(!isRequired) return null;
          if (value!.isEmpty) {
            return 'هذا الحقل مطلوب';
          }
          return null;
        },
        keyboardType: textInputType,
        controller: controller,
        onChanged: onChange,
        style: TextStyleManager.textStyleLight.copyWith(
          fontSize: SizeManager.formFieldFontSize,
          color: ColorsManager.primary,
        ),
        cursorColor: ColorsManager.primary,
        decoration: InputDecoration(
          prefixIcon: prefix,
          suffixIcon: suffix,
          hintText: label,
          hintStyle: TextStyleManager.textStyleLight.copyWith(
            fontSize: SizeManager.formFieldFontSize,
            color: ColorsManager.grey1,
          ),
          errorStyle: TextStyleManager.textStyleLight.copyWith(
            fontSize: SizeManager.formFieldFontSize,
            color: ColorsManager.red,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: const BorderSide(
              color: ColorsManager.grey3,
            )
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: const BorderSide(
              color: ColorsManager.grey3,
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: const BorderSide(
                color: ColorsManager.primary,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: const BorderSide(
              color: ColorsManager.red,
            )
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: const BorderSide(
              color: ColorsManager.red,
            )
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 8)
        ),
      ),
    );
  }
}