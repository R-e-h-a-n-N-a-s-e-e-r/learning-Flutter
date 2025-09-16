import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  static const String id = 'Screen1';

  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen_1'), backgroundColor: Colors.blue),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Rehan"),
            trailing: Text("3:15 pm"),
            subtitle: Text("Hey! whats up"),

          );
        },
      ),
    );
  }
}
