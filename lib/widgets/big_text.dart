import 'package:flutter/material.dart';
import 'package:food_app/utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      this.size = 20,
      required this.text,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w600,
        fontSize: size == 0 ? Dimensions.font20 : size,
      ),
    );
  }
}
