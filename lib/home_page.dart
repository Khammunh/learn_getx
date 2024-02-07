// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:getx/components/bottom_sheet.dart';

import 'package:getx/components/dialog_box.dart';

import 'components/snacbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text(
                      'About Page',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 50),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Contact Page'),
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
