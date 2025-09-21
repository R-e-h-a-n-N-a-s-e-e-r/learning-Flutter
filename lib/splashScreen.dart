import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_projects/adminScreen.dart';
import 'package:flutter_projects/home.dart';
import 'package:flutter_projects/screen_1.dart';
import 'package:flutter_projects/studentScreen.dart';
import 'package:flutter_projects/teacherScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }

  void isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String userType = sp.getString('type') ?? '';
    bool isLogin = sp.getBool('isLogin') ?? false;
    if (isLogin) {
      if (userType == 'Admin') {
        Timer(Duration(seconds: 4), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => adminScreen()),
          );
        });
      } else if (userType == 'Student') {
        Timer(Duration(seconds: 4), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => studentScreen()),
          );
        });
      } else {
        Timer(Duration(seconds: 4), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => teacherScreen()),
          );
        });
      }
    } else {
      Timer(Duration(seconds: 4), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        image: AssetImage('assets/pic2.jpg'),
        fit: BoxFit.fitHeight,
        height: double.infinity,
      ),
    );
  }
}
