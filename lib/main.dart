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
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 200,

                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "Container 1",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,

                    color: Colors.green,
                    child: Center(
                      child: Text(
                        "Container 2",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,

                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Container 3",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                // margin: EdgeInsets.only(right: 40,left: 60),
                // padding: EdgeInsets.symmetric(vertical: 50,horizontal: 60),
                // transform: Matrix4.rotationZ(0.3),
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 25,
                      // blurStyle: BlurStyle.outer,
                      // spreadRadius: 10,
                    ),
                  ],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg',
                    ),
                  ),
                  border: BoxBorder.all(color: Colors.black, width: 2),
                  // borderRadius: BorderRadius.only(
                  //   topRight: Radius.circular(50),
                  //   bottomLeft: Radius.circular(50),
                  //   bottomRight: Radius.circular(5),
                  //   topLeft: Radius.circular(5),
                  // ),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
