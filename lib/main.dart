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
          title: Center(child: Text('ListView Builder')),
          backgroundColor: Colors.green.shade500,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Henry'),
                    subtitle: Text('This is a ListView Builder'),
                    trailing: Text('6:10 pm'),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
