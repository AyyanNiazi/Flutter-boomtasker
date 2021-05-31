import 'package:flutter/material.dart';
import 'package:real_time_app/pages/inbox.dart';
import 'package:real_time_app/pages/requests.dart';
import 'package:real_time_app/pages/explore.dart';
import 'package:real_time_app/pages/services.dart';
import 'package:real_time_app/pages/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 2;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    Inbox(),
    Requests(),
    Explore(),
    Services(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          body: _widgetOptions.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blueAccent[200],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.inbox),
                  label: "Inbox",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.pages_outlined),
                  label: "Requests",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore),
                  label: "Expore",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.design_services_sharp),
                  label: "Services",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_pin),
                  label: "Profile",
                  backgroundColor: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
