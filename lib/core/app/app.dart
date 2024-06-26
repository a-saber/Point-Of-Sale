import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/core/resources_manager/constants_manager.dart';
import 'package:pos/core/resources_manager/theme_manager.dart';
import 'package:pos/features/authentication/presentation/views/login_view.dart';

import '../cache_helper/cache_data.dart';
import '../localization/app_localization.dart';

class MyApp extends StatelessWidget {

  const MyApp._internal();
  static const MyApp _instance = MyApp._internal(); // singleton
  factory MyApp() => _instance;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeManager.light,
      title: 'POS',
      debugShowCheckedModeBanner: false,
      locale: Locale(CacheData.lang!),
      translations: AppLocalization(),
      home: const LoginView(),

    );
  }
}