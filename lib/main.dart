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
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            spacing: 5,
            children: [
              SizedBox(height: 10),
              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 50,
                    width: 50,
                    image: AssetImage('assets/logo.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Maintenance",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff4C5980),
                        ),
                      ),
                      Text(
                        "Box",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Log in',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.redAccent,
                    fontFamily: 'rubik_medium',
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Continue your journey of being a \nprofessional with Winzi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey,
                    fontFamily: 'rubik_regular',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'RobotoSlab',
                    ),
                    prefixIcon: Icon(Icons.email, color: Colors.red),
                    fillColor: Color(0xfff3f3f3),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'RobotoSlab',
                    ),
                    prefixIcon: Icon(Icons.lock, color: Colors.red),
                    fillColor: Color(0xfff3f3f3),
                    filled: true,
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  Text('Forgot Password?',style: TextStyle(
                    decoration: TextDecoration.underline,
                    
                  ),)
                ],
              ),

              SizedBox(height: 30),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                  // border: BoxBorder.all(color: Colors.black87)
                ),

                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'rubik_medium',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Do not have an account ? ',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.redAccent,
                      fontFamily: 'rubik_medium',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
