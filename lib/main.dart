import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber.shade900,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          // title: Text("Scaffolding"),
        ),
        body: const Center(
          child: Image(
            image: AssetImage('assets/two.png'),
          ),
        ),
      ),
    ),
  );
}
