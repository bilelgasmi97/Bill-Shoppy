import 'package:best_one/featuers/screens/signup/succes_screen.dart';
import 'package:best_one/utils/constants/images_strings.dart';
import 'package:best_one/utils/constants/sizes.dart';
import 'package:best_one/utils/constants/texts_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class resetPasswordEmailScreen extends StatelessWidget {
  const resetPasswordEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(TImages.verifiyemailImage),
                width: 280,
              ),
              SizedBox(
                height: TSizes.defaultSpace,
              ),
              Text(
                TTexts.verify_email,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "emailaddress@gmail.com",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              Text(
                TTexts.lorem,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text("Done")),
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: TextButton(
                    onPressed: () => Get.to(() => SuccessScreen()),
                    child: Text(TTexts.resend_email)),
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
