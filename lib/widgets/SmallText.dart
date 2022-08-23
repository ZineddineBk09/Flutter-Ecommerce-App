import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color; // ? means optional
  final String text;
  final double? fontSize;
  double height;

  SmallText(
      {Key? key,
      this.color = const Color(
          0xFFccc7c5), // if you want to set a default color value it has to be const not a variable
      required this.text,
      this.fontSize = 12,
      this.height = 1.2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Roboto',
        height: height,
      ),
    );
  }
}
