import 'package:flutter/material.dart';
import 'package:pos/core/resources_manager/size_manager.dart';

import 'form_field_item_builder.dart';
import 'form_label_item_builder.dart';

class FormItemBuilder extends StatelessWidget {
  const FormItemBuilder({
    super.key,
    required this.label,
    required this.isRequired,
    this.onChange,
    this.suffix,
    this.prefix,
    required this.controller,
    required this.textInputType
  });

  final String label;
  final bool isRequired;
  final void Function(String)? onChange;
  final Widget? suffix;
  final Widget? prefix;
  final TextEditingController controller;
  final TextInputType textInputType;
  final double borderRadius = SizeManager.formFieldRadiusSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormLabelItemBuilder(
          label: label,
          isRequired: isRequired
        ),
        const SizedBox(height: SizeManager.formItemSize),
        FormFieldItemBuilder(
          isRequired: isRequired,
          label: label,
          controller: TextEditingController(),
          textInputType: TextInputType.emailAddress,
          onChange: onChange,
          prefix: prefix,
          suffix: suffix,
        ),
      ],
    );
  }
}
