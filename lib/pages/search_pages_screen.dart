// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/bottom_sheet.dart';
import 'language_change.dart';

class SearchPagesScreen extends StatefulWidget {
  const SearchPagesScreen({super.key});

  @override
  State<SearchPagesScreen> createState() => _SearchPagesScreenState();
}

class _SearchPagesScreenState extends State<SearchPagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 40),
          margin: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Task',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // TextFormField(
              //   decoration: InputDecoration(
              //     hintText: 'Making Video',
              //     filled: true,
              //     fillColor: Colors.grey[00],
              //     border: const OutlineInputBorder(
              //       borderSide: BorderSide.none,
              //     ),
              //     suffixIcon: GestureDetector(
              //       onTap: () {},
              //       child: Container(
              //         margin: const EdgeInsets.only(
              //             right: 3, top: 2, left: 3, bottom: 2),
              //         decoration: BoxDecoration(
              //           color: Colors.blue,
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //         child: const Icon(
              //           Icons.delete,
              //           color: Colors.white,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Making Video',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
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
                  const Text('Please enter task'),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.all(18),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter Task',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20, left: 20),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text('Save'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
