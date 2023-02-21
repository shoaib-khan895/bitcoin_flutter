import 'package:flutter/cupertino.dart';

class ReuseAbleText extends StatelessWidget {
  final double fontSize;

  final String txt;

  final Color color;

  const ReuseAbleText({
    required this.txt,
    required this.fontSize,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
          color: color, fontWeight: FontWeight.w800, fontSize: fontSize),
    );
  }
}
