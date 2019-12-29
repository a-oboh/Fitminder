import 'package:Fitminder/customs/colors.dart';
import 'package:Fitminder/customs/fitminder_icons.dart';
import 'package:Fitminder/home_page.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    Placeholder(color: Colors.white),
    Placeholder(color: Colors.deepOrange),
    Placeholder(color: Colors.green),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Fitminder.home,
              color: FitColors.blue,
              size: 40,
            ),
            icon: Icon(
              Fitminder.home,
              color: Colors.grey,
              size: 40,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Fitminder.discover,
              color: FitColors.blue,
              size: 50,
            ),
            icon: Icon(
              Fitminder.discover,
              color: Colors.grey,
              size: 50,
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Fitminder.reports,
              color: FitColors.blue,
              size: 40,
            ),
            icon: Icon(
              Fitminder.reports,
              color: Colors.grey,
              size: 40,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Fitminder.me,
              color: FitColors.blue,
              size: 40,
            ),
            icon: Icon(
              Fitminder.me,
              color: Colors.grey,
              size: 40,
            ),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
