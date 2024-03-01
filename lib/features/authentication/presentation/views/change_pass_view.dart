import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/core/localization/translation_key_manager.dart';
import 'package:pos/core/resources_manager/assets_manager.dart';
import 'package:pos/core/resources_manager/color_manager.dart';
import 'package:pos/core/resources_manager/style_manager.dart';
import 'package:pos/core/shared_widgets/form/form_button.dart';
import 'package:pos/core/shared_widgets/form/form_item_builder.dart';
import 'package:pos/features/authentication/presentation/views/login_view.dart';
import 'package:pos/features/authentication/presentation/views/widgets/auth_view_builder.dart';

import 'widgets/all_rights_saved.dart';
import 'widgets/hello.dart';
import 'widgets/name_logo.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});
  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  final formKey = GlobalKey<FormState>();

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AuthViewBuilder(
        formBody: Form(
          key: formKey,
          child: CustomScrollView(
            slivers:
            [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const NameLogo(),
                    const SizedBox(height: 20),
                    Text(
                      TranslationKeyManager.changePassword.tr,
                      style: TextStyleManager.textStyleBold.copyWith(
                        fontSize: 24,
                        color: ColorsManager.black,
                      ),
                    ),
                    const SizedBox(height: 40),
                    FormItemBuilder(
                      label: TranslationKeyManager.newPassword.tr,
                      isRequired: true,
                      controller: passwordController,
                      textInputType: TextInputType.text,
                      suffix: IconButton(
                          onPressed: (){},
                          icon: const Icon(
                            Icons.remove_red_eye_outlined,
                            size: 15,
                          )
                      ),
                    ),
                    const SizedBox(height: 20),
                    FormItemBuilder(
                      label: TranslationKeyManager.confirmPassword.tr,
                      isRequired: true,
                      controller: confirmPasswordController,
                      textInputType: TextInputType.text,
                      suffix: IconButton(
                          onPressed: (){},
                          icon: const Icon(
                            Icons.remove_red_eye_outlined,
                            size: 15,
                          )
                      ),
                    ),
                    const SizedBox(height: 40),
                    FormButton(
                      label: TranslationKeyManager.save.tr,
                      onPressed: ()
                      {
                        formKey.currentState!.validate();
                      },
                    ),
                  ],
                ),
              ),
              const SliverFillRemaining(
                  hasScrollBody: false,
                  child: AllRightsSaved()
              )
            ],
          ),
        )
    );
  }
}
