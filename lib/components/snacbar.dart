import 'package:flutter/material.dart';
import 'package:get/get.dart';

void mySnackBar() {
  Get.snackbar(
    'This is my title',
    'Getx is most important',
    colorText: Colors.white,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.grey,
    animationDuration: Duration(seconds: 2),
    borderRadius: 10,
    icon: Icon(
      Icons.notification_add,
      size: 30,
      color: Colors.white,
    ),
    dismissDirection: DismissDirection.horizontal,
    isDismissible: false,
    mainButton: TextButton(
      onPressed: () {
        Get.back();
      },
      child: const Text(
        'Undo',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
  );
}
