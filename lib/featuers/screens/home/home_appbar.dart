import 'package:best_one/common/widgets/app_bar.dart';
import 'package:best_one/common/widgets/cart_menu_icon.dart';
import 'package:best_one/utils/constants/colors.dart';
import 'package:best_one/utils/constants/texts_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TAppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TTexts.shopping_great,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.textWhite.withOpacity(0.7)),
            ),
            Text(
              TTexts.user_name,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.textWhite),
            )
          ],
        ),
        actions: [
          TCartCounterIcon(
            iconColor: Colors.white,
            onPressed: () {},
          )
        ]);
  }
}
