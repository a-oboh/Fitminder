import 'package:Fitminder/customs/colors.dart';
import 'package:Fitminder/customs/fitminder_icons.dart';
import 'package:Fitminder/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'customs/workout_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          // padding: EdgeInsets.only(left:15.0),
          // crossAxisAlignment: CrossAxisAlignment.start,
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
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 31, right: 14),
                    child: currentPlans(
                      "Drink",
                      "Water",
                      Positioned(
                        top: 40,
                        right: 5,
                        child: Image.asset(
                          'assets/drink.png',
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: currentPlans(
                      "Workout",
                      "",
                      Positioned(
                        top: 22.5,
                        right: 20,
                        child: Image.asset(
                          'assets/workout.png',
                          height: 100,
                          // width: 70,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: currentPlans(
                      "Drink",
                      "Water",
                      Positioned(
                        top: 40,
                        right: 5,
                        child: Image.asset(
                          'assets/drink.png',
                          height: 80,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: currentPlans(
                      "Workout",
                      "",
                      Positioned(
                        top: 22.5,
                        right: 20,
                        child: Image.asset(
                          'assets/workout.png',
                          height: 100,
                          // width: 70,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: 93,
                  margin: EdgeInsets.symmetric(horizontal: 31),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        blurRadius: 7, // has the effect of softening the shadow
                        spreadRadius:
                            4, // has the effect of extending the shadow
                        offset: Offset(
                          0.0, // horizontal, move right 10
                          4.0, // vertical, move down 10
                        ),
                      ),
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        blurRadius: 7, // has the effect of softening the shadow
                        spreadRadius:
                            4, // has the effect of extending the shadow
                        offset: Offset(
                          0.0, // horizontal, move right 10
                          -1, // vertical, move down 10
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 46,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Weekly Goal",
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: "67% ",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  textStyle: TextStyle(color: FitColors.blue)),
                            ),
                            TextSpan(
                              text: "complete",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(color: Colors.black),
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 63,
                  child: ChartScreen(
                    width: MediaQuery.of(context).size.width,
                    // height: 100,
                    percentCompleted: 0.7,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 30.0),
              child: Text(
                'My Workouts',
                style: GoogleFonts.poppins(
                  // textStyle: TextStyle(color: Colors.blue, letterSpacing: .5),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 12.0),
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
              child: WorkOutCard(
                firstText: "Full Body",
                secondText: "Intermediate",
                color: FitColors.orange,
                imagePosition: Positioned(
                  top: 3,
                  right: 15,
                  child: Image.asset(
                    'assets/run.png',
                    height: 150,
                    // width: 70,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 17.0),
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
              child: WorkOutCard(
                firstText: "Abs",
                secondText: "Beginner",
                color: FitColors.green,
                imagePosition: Positioned(
                  top: 0,
                  right: 10,
                  child: Image.asset(
                    'assets/abs.png',
                    height: 155,
                    // width: 70,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 17.0),
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
              child: WorkOutCard(
                firstText: "Arms",
                secondText: "Advanced",
                color: FitColors.red,
                imagePosition: Positioned(
                  top: 0,
                  right: 10,
                  child: Image.asset(
                    'assets/arms.png',
                    height: 155,
                    // width: 70,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 17.0),
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.07),
              child: WorkOutCard(
                firstText: "Full Body",
                secondText: "Beginner",
                color: FitColors.green,
                imagePosition: Positioned(
                  top: 3,
                  right: 15,
                  child: Image.asset(
                    'assets/run.png',
                    height: 150,
                    // width: 70,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: FitColors.blue,
        child: Icon(Fitminder.add),
      ),
    );
  }

  Stack currentPlans(String firstText, String secondText, Positioned image) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.134,
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
            color: FitColors.blue,
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
                firstText,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Colors.white),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              Text(
                secondText,
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
        image,
        Positioned(
          top: 130,
          left: 2,
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
    );
  }
}
