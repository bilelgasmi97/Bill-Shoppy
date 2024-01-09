import 'package:best_one/featuers/authentication/controllers_onboarding/onboarding_controllers.dart';
import 'package:best_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TSizes.AppBarHeight,
        right: TSizes.defaultSpace,
        child: TextButton(
            onPressed: () => onBoardingController.instance.skipPage(),
            child: Text("Skip")));
  }
}
