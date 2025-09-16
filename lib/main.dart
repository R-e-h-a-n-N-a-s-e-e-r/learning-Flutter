import 'package:flutter/material.dart';
import 'package:flutter_projects/home.dart';
import 'package:flutter_projects/screen_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home:Home()
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
        Screen1.id: (context) => Screen1(),
      },
    );
  }
}
