import 'package:flutter/material.dart';
import 'lab2.dart';

class Lab2Screen extends StatelessWidget {
  const Lab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab 2: Stateful Widgets'),
      ),
      body: MyApp(),
    );
  }
}
