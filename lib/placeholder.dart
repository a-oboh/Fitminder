import 'package:Fitminder/customs/colors.dart';
import 'package:flutter/material.dart';

class PlaceholderScreen extends StatelessWidget {
  final Color color;

  const PlaceholderScreen({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}

class ChartScreen extends StatefulWidget {
  const ChartScreen({Key key, this.percentCompleted, this.width, this.height})
      : super(key: key);

  @override
  _ChartScreenState createState() => _ChartScreenState();

  final double percentCompleted;
  final double width;
  final double height;
}

class _ChartScreenState extends State<ChartScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _progressController;
  Animation<double> _progressAnimation;

  double progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    progressValue = widget.width * 0.15;
    double begin = widget.width * 0.15;
    double end = widget.width * 0.85;

    Tween<double> tween = Tween(begin: begin, end: end);

    _progressController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _progressAnimation = tween.animate(
        CurvedAnimation(parent: _progressController, curve: Curves.easeIn))
      ..addListener(() {
        double value = _progressAnimation.value;
        double completed = widget.percentCompleted;

        // if (completed * value <= value) {
        //   setState(() {
        //     progressValue = widget.width * 0.2 >= completed * value
        //         ? value
        //         : completed * value;
        //   });
        // }

        if (completed * value >= widget.width * 0.2) {
          setState(() {
            progressValue = completed * value;
          });
        }
        print(progressValue);
      });

    _progressController.forward();
  }

  @override
  void dispose() {
    _progressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomPaint(
        painter: MyPainter(progressValue),
        child: Container(height: widget.height, width: widget.width),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final double progress;

  MyPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();

    //paint properties
    paint.color = Colors.grey[300];
    paint.strokeCap = StrokeCap.round;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 16.0;

    Rect rect1 = Rect.fromLTWH(200, 100, size.width * 0.3, size.height * 0.02);

    Offset gp1 = Offset(size.width * 0.15, size.height * 0.5);
    Offset gp2 = Offset(size.width * 0.85, size.height * 0.5);

    canvas.drawLine(gp1, gp2, paint);

    //paint properties
    paint.color = FitColors.blue;
    paint.strokeCap = StrokeCap.round;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 16.0;

    var start = size.width * 0.15;
    var height = size.height * 0.5;

    Offset bp1 = Offset(start, height);
    Offset bp2 = Offset(progress, height);

    canvas.drawLine(bp1, bp2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
    throw UnimplementedError();
  }
}
