import 'package:best_one/featuers/authentication/controllers_onboarding/onboarding_controllers.dart';
import 'package:best_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: 30,
        right: 30,
        child: ElevatedButton(
            onPressed: () => onBoardingController.instance.nextPage(),
            child: Icon(Icons.arrow_forward_ios_outlined)));
  }
}
