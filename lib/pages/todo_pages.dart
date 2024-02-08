import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo API'),
        centerTitle: true,
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: const InkWell(
              child: Row(
                children: [
                  Text('Add new'),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              child: const Row(
                children: [
                  Text(
                    'All Todos',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, i) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.add_circle,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Learn getx API',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
