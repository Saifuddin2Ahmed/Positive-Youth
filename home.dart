import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positive Youth'),
        centerTitle: true,
        actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {})],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Saifuddin Ahmed",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  )),
              accountEmail: Text("safadeenahmed@gmail.com"),
              /* currentAccountPicture:
                  CircleAvatar(backgroundImage: NetworkImage('')),*/
            ),
            ListTile(
              title: Text('Sent'),
              leading: Icon(Icons.send),
            ),
            ListTile(
              title: Text('Inbox'),
              leading: Icon(Icons.inbox),
            ),
            ListTile(
              title: Text('Stared'),
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text('Archive'),
              leading: Icon(Icons.archive),
            ),
            ListTile(
              title: Text('Chat'),
              leading: Icon(Icons.chat),
            ),
            ListTile(
              title: Text('Log out'),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: () {},
      ),
    );
  }
}
