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
          const SizedBox(height: 20),
          const Text('This is Bottom Sheet'),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text('Cannel'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Done'),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
