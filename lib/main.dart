import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Expanded Widget')),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Divider(
              color: Colors.blue,
              // endIndent: 40,
              // indent: 20,
              thickness: 2,
            ),
            SizedBox(height: 100, child: VerticalDivider(color: Colors.black)),
            Divider(
              color: Colors.blue,
              // endIndent: 40,
              // indent: 20,
              thickness: 2,
            ),
            Center(
              child: CircleAvatar(
                // foregroundColor: Colors.red,
                radius: 50,
                backgroundColor: Colors.blue,
                // backgroundImage: NetworkImage('https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg'),
                child: Icon(Icons.account_circle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
