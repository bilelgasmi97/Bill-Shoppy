import 'package:flutter/material.dart';

class THelperFunctions {
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  /* static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

   static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }
     static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  } */
}
