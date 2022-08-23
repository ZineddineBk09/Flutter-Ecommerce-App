import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/BigText.dart';
import 'package:e_commerce_app/widgets/SmallText.dart';
import 'package:e_commerce_app/widgets/iconAndTextWidget.dart';
import 'package:flutter/material.dart';

class FoodInfos extends StatelessWidget {
  final String text;

  const FoodInfos({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, fontSize: Dimensions.font26),
        SizedBox(
            height: Dimensions
                .height10), // 10 is the height of the space between the two elements
        Row(children: [
          Wrap(
            children: List.generate(
              5,
              (index) => const Icon(
                Icons.star,
                color: AppColors.mainColor,
                size: 15,
              ),
            ),
          ),
          const SizedBox(width: 10),
          SmallText(text: '4.5'),
          const SizedBox(width: 10),
          SmallText(text: '1287'),
          const SizedBox(width: 10),
          SmallText(text: 'comments')
        ]),
        SizedBox(height: Dimensions.height15),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
          IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: 'Normal',
              iconColor: AppColors.iconColor1),
          IconAndTextWidget(
              icon: Icons.location_on,
              text: '1.7km',
              iconColor: AppColors.mainColor),
          IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: '32min',
              iconColor: AppColors.iconColor2),
        ]),
      ],
    );
  }
}
