import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

import 'package:weather_app/routes/app_pages.dart';

Future main() async {
  await dotenv.load();

  runApp(GetMaterialApp(
     debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: Routes.INITIAL,
      getPages: AppPages.routes,
      // logWriterCallback: Logger.write,
      // locale: TranslationService.locale,
      // fallbackLocale: TranslationService.fallbackLocale,
      // translations: TranslationService(),
  ));
}