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
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.deepPurpleAccent,
            child: Center(child: Text("Container")),
          ),
        ),
      ),
    );
  }
}
