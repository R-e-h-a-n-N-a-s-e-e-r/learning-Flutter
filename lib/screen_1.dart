import 'package:flutter/material.dart';
import 'package:flutter_projects/adminScreen.dart';
import 'package:flutter_projects/home.dart';
import 'package:flutter_projects/studentScreen.dart';
import 'package:flutter_projects/teacherScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();
  String usertype = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: 'Email',),
              controller: emailController,

            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Password'),
              controller: passwordController,
              obscureText: true,


            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'Age'),
              controller: ageController,
            ),
            SizedBox(height: 20),
            DropdownMenu(
              onSelected: (type) {
                usertype = type!;
              },

              dropdownMenuEntries: [
                DropdownMenuEntry(value: 'Admin', label: 'Admin'),
                DropdownMenuEntry(value: 'Student', label: 'Student'),
                DropdownMenuEntry(value: 'Teacher', label: 'Teacher'),
              ],
            ),
            InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setString('email', emailController.text.toString());
                sp.setString('age', ageController.text.toString());
                sp.setString('type', usertype);
                sp.setBool('isLogin', true);
                if (usertype == 'Admin') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => adminScreen()),
                  );
                } else if (usertype == 'Student') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => studentScreen()),
                  );
                } else if (usertype == 'Teacher') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => teacherScreen()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                }
              },
              child: Container(
                width: double.infinity,
                height: 35,
                color: Colors.green,
                child: Center(child: Text('Press')),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
