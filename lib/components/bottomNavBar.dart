import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:sentimental_analyst/screens/favourits.dart';
import 'package:sentimental_analyst/screens/home.dart';

// ignore: use_key_in_widget_constructors
class Bottom extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Bottom> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List _widgetOptions = [
    HomeScreen(),
    Favourits(),
    Icon1(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        // ignore: prefer_const_literals_to_create_immutables
        items: <Widget>[
          Icon(Icons.home, size: 35, color: Colors.black),
          Icon(Icons.favorite, size: 35, color: Colors.black),
          Icon(Icons.list, size: 35, color: Colors.black),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        // buttonBackgroundColor: Colors.pink[100],
        // height: 60,
        // color: Colors.pink[200],
        // animationDuration: Duration(milliseconds: 300),
        // backgroundColor: Colors.pink[50],
      ),
      body: _widgetOptions.elementAt(_page),
    );
  }
}
