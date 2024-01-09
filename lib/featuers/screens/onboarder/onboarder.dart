import 'package:best_one/featuers/authentication/controllers_onboarding/onboarding_controllers.dart';
import 'package:best_one/featuers/screens/onboarder/widgets/onBoarding_dot_navigation.dart';
import 'package:best_one/featuers/screens/onboarder/widgets/onBoarding_next_button.dart';
import 'package:best_one/featuers/screens/onboarder/widgets/onBoarding_page.dart';
import 'package:best_one/featuers/screens/onboarder/widgets/onBoarding_skip.dart';
import 'package:best_one/utils/constants/colors.dart';
import 'package:best_one/utils/constants/images_strings.dart';
import 'package:best_one/utils/constants/sizes.dart';
import 'package:best_one/utils/constants/texts_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class onBoardingScreens extends StatelessWidget {
  const onBoardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(onBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          onBoardingNextButton(),
          onBoardingSkip(),
          onBoardingDotNavigation(),
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                image: TImages.onboarderImage1,
                title: TTexts.onBoardringText1,
                subtitle: TTexts.onBoardringText2,
              ),
              onBoardingPage(
                image: TImages.onboarderImage2,
                title: TTexts.onBoardringText2,
                subtitle: TTexts.onBoardringText2,
              ),
              onBoardingPage(
                image: TImages.onboarderImage3,
                title: TTexts.onBoardringText2,
                subtitle: TTexts.onBoardringText2,
              ),
            ],
          )
        ],
      ),
    );
  }
}
