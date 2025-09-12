import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber.shade900,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Hot Relaoding"),
          centerTitle: true,
        ),
        body: const Center(child: Image(image: AssetImage('assets/two.png'))),
      ),
    );
  }
}
