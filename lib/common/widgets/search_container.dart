import 'package:best_one/utils/constants/colors.dart';
import 'package:best_one/utils/constants/sizes.dart';
import 'package:best_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Icons.search,
    this.showbackground = true,
    this.showborder = true,
  });

  final String text;
  final IconData? icon;
  final bool showbackground, showborder;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: 400,
        padding: EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
            color: showbackground
                ? dark
                    ? TColors.dark
                    : TColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
            border: showborder ? Border.all(color: Colors.grey) : null),
        child: Row(
          children: [
            Icon(icon, color: Colors.black),
            SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
