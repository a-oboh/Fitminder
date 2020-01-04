import 'package:Fitminder/customs/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkOutCard extends StatelessWidget {
  const WorkOutCard({
    Key key,
    this.firstText,
    this.secondText,
    this.color,
    this.imagePosition,
  }) : super(key: key);

  final String firstText;
  final String secondText;
  final Color color;
  final Positioned imagePosition;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.17,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
        Positioned(
          top: 36,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                firstText,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Colors.white),
                  fontWeight: FontWeight.w600,
                  fontSize: 27,
                ),
              ),
              Text(
                secondText,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Colors.white),
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 33,
          right: 0.0,
          child: Image.asset(
            'assets/mountain_1.png',
            height: 120,
          ),
        ),
        imagePosition,
      ],
    );
  }
}
