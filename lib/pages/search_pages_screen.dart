// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/components/api/todos_controllers.dart';

class SearchPagesScreen extends StatelessWidget {
  const SearchPagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TodoControllers todoControllers = Get.put(TodoControllers());
    TextEditingController _textEditingController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 40),
          margin: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              Container(
                child: const Row(
                  children: [
                    Text(
                      "Task",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, i) {
                    return Obx(
                      () => Column(
                        children: todoControllers.todoLists
                            .map(
                              (e) => Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const SizedBox(width: 4),
                                            Text(
                                              e.title.toString(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Get.defaultDialog(
                                                  title: 'Delete task',
                                                  content: Column(
                                                    children: [
                                                      const Text(
                                                          'Do you want to delete?'),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          TextButton(
                                                            onPressed: () {
                                                              Get.back();
                                                            },
                                                            child: const Text(
                                                                'No'),
                                                          ),
                                                          const SizedBox(
                                                              width: 60),
                                                          TextButton(
                                                            onPressed: () {
                                                              Get.back();
                                                            },
                                                            child: const Text(
                                                                'Yes'),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                              icon: const Icon(
                                                Icons.delete,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    );
                  },
                  itemCount: 1,
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
                      controller: _textEditingController,
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
                            todoControllers
                                .postTodos(_textEditingController.text);
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
