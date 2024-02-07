import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Screen'),
      ),
      body:const  SafeArea(
        child: Center(
          child: Text('Contact Pages'),
        ),
      ),
    );
  }
}
