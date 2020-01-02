import 'package:Fitminder/customs/colors.dart';
import 'package:Fitminder/customs/fitminder_icons.dart';
import 'package:Fitminder/home_page.dart';
import 'package:Fitminder/placeholder.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      HomePage(),
      ChartScreen(
        percentCompleted: 0.8,
        width: MediaQuery.of(context).size.width,
      ),
      PlaceholderScreen(color: Colors.deepOrange),
      PlaceholderScreen(color: Colors.green),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: FitColors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Fitminder.home,
              color: Colors.blue,
              // size: 40,
            ),
            icon: Icon(
              Fitminder.home,
              color: Colors.grey,
              // size: 40,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Fitminder.compass,
              color: Colors.blue,
              // size: 40,
            ),
            icon: Icon(
              Fitminder.compass,
              color: Colors.grey,
              // size: 50,
            ),
            title: Text('Discover'),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Fitminder.reports,
              color: Colors.blue,
              // size: 40,
            ),
            icon: Icon(
              Fitminder.reports,
              color: Colors.grey,
              // size: 40,
            ),
            title: Text('Reports'),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Fitminder.me,
              color: Colors.blue,
              // size: 40,
            ),
            icon: Icon(
              Fitminder.me,
              color: Colors.grey,
              // size: 40,
            ),
            title: Text('Me'),
          ),
        ],
      ),
      body: _children[_currentIndex],
    );
  }
}
