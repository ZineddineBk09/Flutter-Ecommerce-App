import 'package:e_commerce_app/pages/home/foodPageBody.dart';
import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/BigText.dart';
import 'package:e_commerce_app/widgets/SmallText.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // showing header
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.width45, bottom: Dimensions.width15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      BigText(
                          text: 'Algeria',
                          color: AppColors.mainColor,
                          fontSize: 30),
                      Row(
                        children: [
                          SmallText(
                              text: 'Dar el bieda', color: Colors.black54),
                          const Icon(Icons.arrow_drop_down_rounded),
                        ],
                      )
                    ]),
                    Center(
                      child: Container(
                        width: Dimensions.width45,
                        height: Dimensions.height45,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius20),
                            color: AppColors.mainColor),
                        child: Icon(Icons.search,
                            color: Colors.white, size: Dimensions.icon24),
                      ),
                    )
                  ]),
            ),
          ),
          // showing body
          const Expanded(child: SingleChildScrollView(child: FoodPageBody())),
        ],
      ),
    );
  }
}
