import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color; // ? means optional
  final String text;
  final double fontSize;
  TextOverflow? overflow;

  BigText({
    Key? key,
    this.color = const Color(0xFF332d2b),
    // if you want to set a default color value it has to be const not a variable
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    // TextOverflow.ellipsis is the default value which will truncate the text if it is too long
    this.fontSize = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: fontSize == 0 ? Dimensions.font20 : fontSize,
        overflow: overflow,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
      ),
    );
  }
}
