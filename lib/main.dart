import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

Future main() async {
  await dotenv.load();

  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.INITIAL,
        defaultTransition: Transition.fade,
        getPages: AppPages.pages,
    )
  );
}