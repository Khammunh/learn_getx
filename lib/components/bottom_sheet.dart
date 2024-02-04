import 'package:flutter/material.dart';
import 'package:get/get.dart';

void myBottomSheet(BuildContext context) {
  Get.bottomSheet(
    Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(height: 4),
          Container(
            width: 50,
            height: 5,
            color: Colors.grey[300],
          ),
          Text('This is Bottom Sheet'),
        ],
      ),
    ),
  );
}
