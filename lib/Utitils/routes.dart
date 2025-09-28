import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/Screens/screen_1.dart';
import 'package:flutter_projects/Screens/screen_2.dart';
import 'package:flutter_projects/Utitils/route_names.dart';
import 'package:flutter_projects/home.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case RouteNames.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RouteNames.screen1:
        return MaterialPageRoute(builder: (context) => Screen1(data: setting.arguments as Map ,));
      case RouteNames.screen2:
        return MaterialPageRoute(builder: (context) => Screen2());

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(body: Center(child: Text('No route is defined')));
          },
        );
    }
  }
}
