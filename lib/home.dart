import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp UI"),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
            tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ],
          ),
          actions: [
            Icon(Icons.search),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(value: '1', child: Text('New Group')),
                PopupMenuItem(value: '2', child: Text('Setting')),
                PopupMenuItem(value: '3', child: Text('Profile')),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Text("1"),
            ListView.builder(
              itemCount: 40,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: index.isEven
                        ? AssetImage('assets/logo.png')
                        : NetworkImage(
                            'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
                          ),
                  ),
                  trailing: index.isEven ? Text("3:27 pm") : Text('1:30 am'),
                  title: index.isEven ? Text("Henry") : Text('Peter'),
                  subtitle: index.isEven
                      ? Text("Hey there! i am using whatsApp")
                      : Text('Hi Sorry working right now'),
                );
              },
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Status Update",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green, width: 3),
                          ),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/logo.png'),
                          ),
                        ),
                        title: Text("Henry"),
                        subtitle: Text('35 minutes Ago'),
                      );
                    },
                  ),
                ),
              ],
            ),
            ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/logo.png'),
                  ),
                  trailing: index / 2 == 0
                      ? Icon(Icons.call)
                      : Icon(Icons.video_call),
                  title: Text("Henry"),
                  subtitle: index / 2 == 0
                      ? Text('You missed a call')
                      : Text('At 3:17 pm'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
