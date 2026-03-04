import 'package:flutter/material.dart';
import 'lab1_screen.dart';
import 'lab2_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homescreen'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Lab 1 Button
              ElevatedButton(
                onPressed: () {
                  // Stack screen: Navigator -> lab1 + lab2
                  Navigator.push(
                    // Which navigator to use
                    context,
                    // Create route to new screen w/ animation
                    MaterialPageRoute(builder: (context) => Lab1Screen()),
                  );
                },
                child: Text('Lab 1'),
              ),

              SizedBox(height: 20),

              // Lab 2 Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lab2Screen()),
                  );
                },
                child: Text('Lab 2'),
              ),
            ],
          ),
      ),
    );
  }
}

