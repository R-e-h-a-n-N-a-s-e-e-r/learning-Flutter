import 'package:flutter/material.dart';
import 'package:flutter_projects/screen_1.dart';
import 'package:shared_preferences/shared_preferences.dart';

class studentScreen extends StatefulWidget {
  const studentScreen({super.key});

  @override
  State<studentScreen> createState() => _studentScreenState();
}

class _studentScreenState extends State<studentScreen> {
  String email = '', age = '', type = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString('email') ?? '';
    age = sp.getString('age') ?? '';
    type = sp.getString('type') ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,

        title: Text('Student Screen'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "SharedPreferences",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            'Email : $email',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Text(
            'Age : $age',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Text(
            'Type : $type',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),

          InkWell(
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.clear();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Container(
              width: double.infinity,
              height: 35,
              color: Colors.green,
              child: Center(child: Text('Logout')),
            ),
          ),
        ],
      ),
    );
  }
}
