import 'package:best_one/featuers/screens/login/login.dart';
import 'package:best_one/featuers/screens/onboarder/onboarder.dart';
import 'package:best_one/featuers/screens/signup/signup.dart';
import 'package:best_one/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      /* home: onBoardingScreens(), */
      home: LoginScreen(),
      /*  home: SignupScreen(), */
    );
  }
}
