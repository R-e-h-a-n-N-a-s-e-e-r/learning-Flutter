import 'package:flutter/material.dart';
import 'package:flutter_projects/Utitils/route_names.dart';
import 'package:flutter_projects/Utitils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: HomeScreen.id,
      // routes: {
      //   HomeScreen.id: (context) => HomeScreen(),
      //   Screen1.id: (context) => Screen1(),
      //   Screen2.id: (context) => Screen2(),
      // },
      initialRoute: RouteNames.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
