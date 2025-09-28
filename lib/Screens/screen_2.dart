import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  // static const String id = 'Screen_2';

  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 2'), backgroundColor: Colors.blue),
      body: Column(
        children: [
          Container(
            height: 30,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.green),
            child: Text('Go to Screen 3'),
          ),
        ],
      ),
    );
  }
}
