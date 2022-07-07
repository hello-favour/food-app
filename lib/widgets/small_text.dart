import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  SmallText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    this.size = 14,
    this.height = 1.2,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: "Roboto",
        height: height,
        fontSize: size,
      ),
    );
  }
}
