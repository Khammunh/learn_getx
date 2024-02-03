import 'package:flutter/material.dart';
import 'package:get/get.dart';

void myBottomSheet() {
  Get.bottomSheet(
    Container(
      height: 300,
      width: 500,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: const Column(
        children: [
          Text('This is Bottom Sheet'),
        ],
      ),
    ),
  );
}
