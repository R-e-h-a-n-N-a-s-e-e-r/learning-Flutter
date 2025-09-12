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
            image: NetworkImage(
              'https://plus.unsplash.com/premium_photo-1672116453187-3aa64afe04ad?q=80&w=869&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
          ),
        ),
      ),
    ),
  );
}
