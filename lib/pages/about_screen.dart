import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _dialogController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Screen'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 30, left: 30),
              decoration: BoxDecoration(
                color: Colors.blue[500],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Name : ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Khammunh',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.defaultDialog(
                                title: 'Hi',
                                content: Form(
                                  key: _formKey,
                                  child: TextField(
                                    controller: _dialogController,
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: const Text('Cannel'),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text('OK'),
                                  ),
                                ]);
                          },
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
