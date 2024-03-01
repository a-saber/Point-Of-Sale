import 'package:flutter/material.dart';

import 'core/app/app.dart';
import 'core/cache_helper/cache_helper.dart';
import 'core/dio_helper/dio_helper.dart';
import 'core/localization/app_localization.dart';
import 'core/service/service_locator.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  await CacheHelper.init();
  setupForgotPassSingleton();
  await AppLocalization.setLanguage();

  runApp(MyApp());
}

