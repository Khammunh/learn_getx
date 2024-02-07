// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/components/bottom_sheet.dart';

import 'package:getx/components/dialog_box.dart';
import 'package:getx/pages/drawer.dart';
import 'package:getx/pages/language_change.dart';

import 'components/snacbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Getx State Management'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      mySnackBar();
                    },
                    child: const Text('Show SnackBar'),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  myDialogBox();
                },
                child: const Text('Show Dialog'),
              ),
              ElevatedButton(
                onPressed: () {
                  myBottomSheet(context);
                },
                child: const Text('Show Bottom Sheet'),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/about');
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text(
                      'About Page',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 50),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/contact');
                    },
                    child: const Text('Contact Page'),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Get.to(LanguageChange());
                },
                child: const Text('Language'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
