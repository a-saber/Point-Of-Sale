import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/core/resources_manager/assets_manager.dart';
import 'package:pos/core/resources_manager/color_manager.dart';
import 'package:pos/core/resources_manager/delay_manager.dart';
import 'package:pos/core/resources_manager/style_manager.dart';
import 'package:pos/core/shared_widgets/form/form_button.dart';
import 'package:pos/core/shared_widgets/form/form_item_builder.dart';
import 'package:pos/features/authentication/presentation/views/widgets/auth_view_builder.dart';

import 'change_pass_view.dart';
import 'register_view.dart';
import 'widgets/all_rights_saved.dart';
import 'widgets/hello.dart';
import 'widgets/name_logo.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                    'تسجيل الدخول',
                    style: TextStyleManager.textStyleBold.copyWith(
                      fontSize: 24,
                      color: ColorsManager.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Hello(),
                  const SizedBox(height: 40),
                  FormItemBuilder(
                    label: 'البريد الإلكتروني',
                    isRequired: true,
                    controller: emailController,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),
                  FormItemBuilder(
                    label: 'كلمة المرور',
                    isRequired: true,
                    controller: passwordController,
                    textInputType: TextInputType.text,
                    suffix: IconButton(
                        onPressed: (){},
                        icon: const Icon(
                          Icons.remove_red_eye_outlined,
                          size: 17,
                        )
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton(
                      onPressed: ()
                      {
                        Get.to(
                          () => const ChangePasswordView(),
                          transition: DelayManager.transitionRightToLeft
                        );
                      },
                      child: Text(
                        'هل نسيت كلمة السر؟',
                        style: TextStyleManager.textStyleRegular.copyWith(
                          fontSize: 14,
                          color: ColorsManager.grey2,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  FormButton(
                    label: 'تسجيل الدخول',
                    onPressed: ()
                    {
                      formKey.currentState!.validate();
                    },
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:
                    [
                      Text(
                        'لا تملك حساب؟',
                        style: TextStyleManager.textStyleRegular.copyWith(
                          fontSize: 14,
                          color: ColorsManager.grey2,
                        ),
                      ),
                      TextButton(
                        onPressed: ()
                        {
                          Get.to(
                            () => const RegisterView(),
                            transition: DelayManager.transitionDownToUp,
                            duration: const Duration(milliseconds: 750),
                          );
                        },
                        child: Text(
                          'أنشئ حسابك الآن',
                          style: TextStyleManager.textStyleBold.copyWith(
                            fontSize: 14,
                            color: ColorsManager.primary,
                          ),
                        ),
                      ),
                    ],
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
