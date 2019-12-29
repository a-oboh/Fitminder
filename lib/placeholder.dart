import 'package:flutter/material.dart';

class Placeholder extends StatelessWidget {
  final Color color;

  const Placeholder({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
