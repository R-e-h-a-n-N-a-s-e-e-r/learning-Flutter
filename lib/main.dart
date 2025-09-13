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
        body: SafeArea(
          // Safe area keeps things in mobile screen means it do not go outside phone screen.
          child: Column(
            spacing: 15,
            mainAxisAlignment: MainAxisAlignment
                .start, // this align the children as Y-axis or vertical
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hello'),
                  Icon(Icons.insert_comment_rounded),
                  Icon(Icons.ac_unit_sharp),
                ],
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
