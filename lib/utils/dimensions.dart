import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageViewContainer = screenHeight / 3.84;
  //3.84 is the ratio of the height of the page view container to the height of the screen
  static double pageViewTextContainer = screenHeight / 7.03;
  //7.03 is the ratio of the height of the page view text container to the height of the screen

  static double pageView = screenHeight / 2.64;

// Dynamic height padding and margin
  static double height10 = screenHeight / 84.4;

  static double height20 = screenHeight / 42.2;

  static double height15 = screenHeight / 56.27;

  static double height30 = screenHeight / 28.13;

  static double height45 = screenHeight / 18;

// Dynamic width padding and margin
  static double width10 = screenHeight / 84.4;

  static double width15 = screenHeight / 56.27;

  static double width20 = screenHeight / 42.2;

  static double width30 = screenHeight / 28.13;

  static double width45 = screenHeight / 18;

// Dynamic font size
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;

// Dynamic radius
  static double radius20 = screenHeight / 42.2;

  static double radius30 = screenHeight / 28.13;

  // Dynamic icon size
  static double icon15 = screenHeight / 42.2;
  static double icon16 = screenHeight / 52.75;
  static double icon24 = screenHeight / 35.17;

  // Dynamic list view size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContainerSize = screenWidth / 3.9;

  // Popular food
  static double popularFoodImgSize = screenHeight / 2.41;

  // Bottom height
  static double bottomBarHeight = screenHeight / 7.03;
}
