import 'package:flutter/material.dart';
import 'package:get/get.dart';

void myDialogBox() {
  Get.defaultDialog(
      title: 'Getx Dialog Box',
      // middleText: 'This is best dialog box in flutter using Getx',
      actions: [
        OutlinedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            print('Done');
          },
          child: const Text('Done'),
        ),
      ],
      // backgroundColor: Colors.blue,
      // onCancel: () {},
      // onConfirm: () {},
      content: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(),
              ),
            ],
          )
        ],
      ),
      titlePadding: const EdgeInsets.all(10),
      contentPadding: const EdgeInsets.all(10),
      radius: 10);
}
