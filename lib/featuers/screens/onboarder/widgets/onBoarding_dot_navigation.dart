import 'package:best_one/featuers/authentication/controllers_onboarding/onboarding_controllers.dart';
import 'package:best_one/utils/constants/colors.dart';
import 'package:best_one/utils/constants/sizes.dart';
import 'package:best_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingDotNavigation extends StatelessWidget {
  const onBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = onBoardingController.instance;
    return Positioned(
        bottom: 50,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          count: 3,
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light : TColors.dark,
              dotHeight: 6),
        ));
  }
}
