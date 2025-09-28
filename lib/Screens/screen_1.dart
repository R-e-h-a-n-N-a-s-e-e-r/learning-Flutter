import 'package:flutter/material.dart';
import 'package:flutter_projects/Screens/screen_2.dart';
import 'package:flutter_projects/Utitils/route_names.dart';

class Screen1 extends StatefulWidget {
  // static const String id = 'Screen_1';
  dynamic data;

   Screen1({super.key,required this.data});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 1' + widget.data['name']), backgroundColor: Colors.blue),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              // Navigator.pushNamed(context, Screen1.id);
              Navigator.pushNamed(context, RouteNames.screen2);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Go to Screen 2')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
