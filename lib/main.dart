import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int x = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            x++;
            setState(() {});
          },
        ),
        appBar: AppBar(
          title: Text('Stateful widget'),
          backgroundColor: Colors.cyan,
        ),
        body: SafeArea(
          child: Center(
            child: Text(x.toString(), style: TextStyle(fontSize: 30)),
          ),
        ),
      ),
    );
  }
}
