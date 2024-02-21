import 'package:flutter/material.dart';
import 'package:pos/core/resources_manager/color_manager.dart';
import 'package:pos/core/resources_manager/style_manager.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'أهلا وسهلا بك 👋',
      style: TextStyleManager.textStyleLight.copyWith(
        fontSize: 16,
        color: ColorsManager.grey,
      ),
    );
  }
}
