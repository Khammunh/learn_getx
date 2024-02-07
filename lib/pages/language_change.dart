import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageChange extends StatelessWidget {
  const LanguageChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
              Text('heading'.tr),
              const SizedBox(height: 20),
              Text('dec'.tr),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Get.updateLocale(
                        const Locale('lao'),
                      );
                    },
                    child: const Text("Lao"),
                  ),
                  const SizedBox(width: 40),
                  ElevatedButton(
                    onPressed: () {
                      Get.updateLocale(
                        const Locale('en'),
                      );
                    },
                    child: const Text("English"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
