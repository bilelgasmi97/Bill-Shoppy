import 'package:best_one/common/widgets/circular_container.dart';
import 'package:best_one/common/widgets/primary_header_container.dart';
import 'package:best_one/featuers/screens/home/home_appbar.dart';
import 'package:best_one/utils/constants/colors.dart';
import 'package:best_one/utils/constants/images_strings.dart';
import 'package:best_one/utils/constants/sizes.dart';
import 'package:best_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../../common/widgets/curved_edgets.dart';
import '../../../common/widgets/rounded_images.dart';
import '../../../common/widgets/search_container.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        TPrimaryHeaderContainer(
            child: Column(
          children: [
            const THomeAppBar(),
            SizedBox(
              height: TSizes.defaultSpace,
            ),
            TSearchContainer(text: "search in store"),
            SizedBox(
              height: TSizes.defaultSpace,
            ),
            Padding(
              padding: EdgeInsets.only(left: TSizes.defaultSpace),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: TSizes.spaceBtwItems),
                          child: Column(
                            children: [
                              Container(
                                width: 56,
                                height: 56,
                                padding: const EdgeInsets.all(TSizes.sm),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100)),
                                child: Center(
                                  child: Image(
                                    image: AssetImage(TImages.lightAppLogo),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              /*   const SizedBox(
                                height: TSizes.spaceBtwItems / 2,
                              ), */
                              SizedBox(
                                width: 55,
                                child: Text(
                                  "apple",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .apply(color: Colors.white),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
        Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: CarouselSlider(
            options: CarouselOptions(viewportFraction: 1),
            carouselController: CarouselController(),
            items: [
              TRoundedImage(imageUrl: TImages.bannerimage1),
              TRoundedImage(imageUrl: TImages.bannerimage2),
              TRoundedImage(
                imageUrl: TImages.bannerimage3,
              )
            ],
          ),
        ),
        SizedBox(
          height: TSizes.defaultSpace,
        ),
        Row(
          children: [
            for (int i = 0; i < 3; i++)
              TCirculationContainer(
                height: 4,
                width: 20,
                margin: EdgeInsets.all(2),
                backgroundColor: Colors.black,
              )
          ],
        )
      ]),
    ));
  }
}
