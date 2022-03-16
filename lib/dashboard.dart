import 'package:flutter/material.dart';
import 'package:movil/listreob.dart';
import 'package:movil/login_view.dart';

import 'login_view2.dart';
import 'login_view3.dart';
import 'login_view4.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log out'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.navigate_next),
            title: const Text('View 3 with margins'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login2()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.navigate_next),
            title: const Text('View 3 columns'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login3()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.navigate_next),
            title: const Text('View 3 wrap'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login4()));
            },
          ),
          const Divider(),
        ],
      )),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text(
          "Dashboard",
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.red),
          margin: const EdgeInsets.all(20.0), //margin 20pt que pidio
          padding: const EdgeInsets.all(3.0),
          child: const ListREOB(
            height: 150,
            itemColor: Colors.cyan,
            margin: 15.0,
            numberOfItems: 100,
            scrollIn: Axis.vertical,
            width: 50.0,
          ),
        ),
        Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.red),
            margin: const EdgeInsets.all(20.0), //margin 20pt que pidio
            padding: const EdgeInsets.all(3.0),
            child: const ListREOB(
              height: 100,
              itemColor: Colors.amber,
              margin: 20.0,
              numberOfItems: 25,
              scrollIn: Axis.horizontal,
              width: 170,
            )),
      ])),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
