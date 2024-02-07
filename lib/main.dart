import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/components/languages.dart';
import 'package:getx/components/routes.dart';

import 'home_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      translations: Language(),
      getPages: allPageRoutes,
      home: const HomePage(),
    );
  }
}
