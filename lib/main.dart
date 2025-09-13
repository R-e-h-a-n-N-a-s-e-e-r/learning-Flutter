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
          title: Text(
            "Custom fonts",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontFamily: 'RobotoSlab',
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          // Safe area keeps things in mobile screen means it do not go outside phone screen.
          child: Column(
            spacing: 15,
            mainAxisAlignment: MainAxisAlignment
                .start, // this align the children as Y-axis or vertical
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Text(
                'Henry',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.deepPurple,
                child: Center(child: Text('Container')),
              ),

              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
                child: Center(child: Text('Container')),
              ),

              Container(
                height: 100,
                width: 100,
                color: Colors.teal,
                child: Center(child: Text('Container')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
