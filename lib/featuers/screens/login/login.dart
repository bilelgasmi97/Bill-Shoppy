import 'package:best_one/common/styles/spacing_styles.dart';
import 'package:best_one/featuers/screens/login/forget_password.dart';
import 'package:best_one/featuers/screens/signup/signup.dart';
import 'package:best_one/navigation_menu.dart';
import 'package:best_one/utils/constants/colors.dart';
import 'package:best_one/utils/constants/images_strings.dart';
import 'package:best_one/utils/constants/sizes.dart';
import 'package:best_one/utils/constants/texts_strings.dart';
import 'package:best_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingwithAppBarHeight,
          child: Column(
            children: [
              /// image , title and sub title
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                  height: TSizes.defaultSpace,
                ),
                Image.asset(
                  dark ? TImages.darkAppLogo : TImages.lightAppLogo,
                  width: 80,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  TTexts.loginText,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: 8),
                Text(
                  TTexts.loginSubText,
                  style: Theme.of(context).textTheme.bodyLarge,
                )
              ]),
              SizedBox(
                height: TSizes.defaultSpace,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.directions_run_sharp),
                        labelText: TTexts.email),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.directions_run_sharp),
                        labelText: TTexts.email,
                        suffixIcon: Icon(Icons.remove_red_eye)),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections / 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) => (value) {},
                          ),
                          Text("Remeber Me")
                        ],
                      ),
                      TextButton(
                          onPressed: () => Get.to(() => forgetPasswordScreen()),
                          child: Text("Forget Password"))
                    ],
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => Get.to(() => navigationMenu()),
                        child: Text("Login")),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: OutlinedButton(
                        onPressed: () => Get.to(() => SignupScreen()),
                        child: Text(TTexts.signup)),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                  ),
                  Text(
                    "or Sign up with",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        TImages.imageGoogle,
                        width: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: TSizes.defaultSpace,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        TImages.imageFacebook,
                        width: 30,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
