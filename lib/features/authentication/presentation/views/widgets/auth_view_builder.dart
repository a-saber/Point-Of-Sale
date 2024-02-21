import 'package:flutter/material.dart';
import 'package:pos/core/resources_manager/assets_manager.dart';
import 'package:pos/core/resources_manager/color_manager.dart';
import 'package:pos/core/resources_manager/style_manager.dart';

class AuthViewBuilder extends StatelessWidget {
  const AuthViewBuilder({super.key, required this.formBody});

  final Widget formBody;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Builder(
            builder: (context) {
              if(MediaQuery.of(context).size.width < 770)
              {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: formBody,
                );
              } else
              {
                return Stack(
                children: [
                  Image.asset(
                    AssetsManager.authBackground,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Row(
                    children:
                    [
                      Container(
                        decoration: const BoxDecoration(
                          color: ColorsManager.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.359,
                        height: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: formBody,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Text(
                                'مفهوم جديد للمبيعات',
                                textAlign: TextAlign.center,
                                style: TextStyleManager.textStyleBold.copyWith(
                                  fontSize: 48,
                                  color: ColorsManager.white,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'تعرف على المزيد من خلال منصة المميز ... معا إالى القمة',
                                textAlign: TextAlign.center,
                                style: TextStyleManager.textStyleRegular.copyWith(
                                  fontSize: 16,
                                  color: ColorsManager.white,
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                              Image.asset(
                                AssetsManager.authImage,
                                fit: BoxFit.cover,
                                height: MediaQuery.of(context).size.height < 620?
                                MediaQuery.of(context).size.height * 0.5:
                                null,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              );
              }
            }
          ),
        )
    );
  }
}
