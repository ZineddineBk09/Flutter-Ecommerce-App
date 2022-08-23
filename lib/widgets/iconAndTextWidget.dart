import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/SmallText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final Color? textColor;

  const IconAndTextWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.iconColor,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icon,
        color: iconColor,
        size: Dimensions.icon24,
      ),
      const SizedBox(width: 5),
      SmallText(text: text),
    ]);
  }
}
