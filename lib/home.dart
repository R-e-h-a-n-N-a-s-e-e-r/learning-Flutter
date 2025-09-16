import 'package:flutter/material.dart';
import 'package:flutter_projects/screen_1.dart';

class Home extends StatefulWidget {
  static const String id = 'Home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Drawer Navigation')),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
                ),
              ),
              accountName: Text('Rehan'),
              accountEmail: Text('Rehan@gmail.com'),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pushNamed(context, Home.id);
              },
            ),
            ListTile(
              title: Text('Screen1'),
              leading: Icon(Icons.screen_lock_portrait),
              onTap: () {
                Navigator.pushNamed(context, Screen1.id);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, Screen1.id);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const Screen1()),
            // );
          },
          child: const Text("Go to Screen_1"),
        ),
      ),
    );
  }
}
