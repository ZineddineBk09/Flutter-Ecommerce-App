import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/SmallText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  // late runs “lazily”, which means it is not run at all until it is referenced the first time. (Note: if you use late you must initialize it before you use it.)
  late String firstHalf;
  late String secondHalf;

  bool hideText = true;

  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt(), widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              text: firstHalf,
              fontSize: Dimensions.font16,
              color: AppColors.paraColor,
              height: 1.6,
            ) //display first half only
          : Column(
              children: [
                SmallText(
                  text: hideText ? firstHalf + '...' : firstHalf + secondHalf,
                  fontSize: Dimensions.font16,
                  color: AppColors.paraColor,
                  height: 1.6,
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        hideText = !hideText;
                      });
                    },
                    child: Row(
                      children: [
                        SmallText(
                          text: hideText ? "Show more" : "Show less",
                          color: AppColors.mainColor,
                          fontSize: Dimensions.font16,
                        ),
                        Icon(
                          hideText
                              ? Icons.arrow_drop_down
                              : Icons.arrow_drop_up,
                          color: AppColors.mainColor,
                        )
                      ],
                    )),
              ],
            ),
    );
  }
}
