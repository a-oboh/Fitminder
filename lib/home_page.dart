import 'package:Fitminder/customs/colors.dart';
import 'package:Fitminder/customs/fitminder_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex;
  final List<Widget> _children = [];

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
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Current Plans',
                      style: GoogleFonts.poppins(
                        // textStyle: TextStyle(color: Colors.blue, letterSpacing: .5),
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 14),
                    child: Image.asset(
                      'assets/bell_icon.png',
                      width: 22,
                      height: 24,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 120,
                        width: 220,
                        decoration: BoxDecoration(
                          color: Color(0xff2D9CDB),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 13,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Drink",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(color: Colors.white),
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Water",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(color: Colors.white),
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 85,
                        left: 13,
                        child: Text(
                          "Daily",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white),
                            // fontSize: 10,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 31,
                        right: 0.03,
                        child: Image.asset(
                          'assets/mountain_1.png',
                          height: 90,
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 5,
                        child: Image.asset(
                          'assets/drink.png',
                          height: 80,
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 5,
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "Next reminder at ",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(color: Colors.black),
                                  fontSize: 17,
                                ),
                              ),
                              TextSpan(
                                  text: "14:30",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(color: FitColors.blue),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
