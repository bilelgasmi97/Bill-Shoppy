import 'package:best_one/featuers/screens/home/home.dart';
import 'package:best_one/utils/constants/colors.dart';
import 'package:best_one/utils/helpers/helper_functions.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class navigationMenu extends StatelessWidget {
  const navigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: darkMode ? TColors.dark : Colors.white,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.store_outlined),
              label: "Store",
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite_outline),
              label: "Wishlist",
            ),
            NavigationDestination(
              icon: Icon(Icons.person_2_outlined),
              label: "Profil",
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const Home(),
    Container(color: Colors.blue),
    Container(color: Colors.orange),
    Container(color: Colors.purple)
  ];
}
