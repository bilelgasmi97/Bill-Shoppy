import 'package:best_one/common/styles/spacing_styles.dart';
import 'package:best_one/featuers/screens/login/reset_password_email.dart';
import 'package:best_one/featuers/screens/signup/signup.dart';
import 'package:best_one/utils/constants/sizes.dart';
import 'package:best_one/utils/constants/texts_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class forgetPasswordScreen extends StatelessWidget {
  const forgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Padding(
                padding: TSpacingStyles.paddingwithAppBarHeight,
                child: Column(children: [
                  /// image , title and sub title
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          TTexts.fpassword,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        SizedBox(height: 10),
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
                              prefixIcon:
                                  Icon(Icons.arrow_circle_right_outlined),
                              labelText: TTexts.email),
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () =>
                                  Get.to(() => resetPasswordEmailScreen()),
                              child: Text("Submit")),
                        ),
                      ],
                    ),
                  ),
                ]))));
  }
}
