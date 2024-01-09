import 'package:best_one/featuers/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class onBoardingController extends GetxController {
  static onBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// update Current index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jumb to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current Index & Julp to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update Current Index & Jump to the local page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
