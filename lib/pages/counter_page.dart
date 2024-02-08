import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              '0',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
