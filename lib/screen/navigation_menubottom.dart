import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:viteach_learning_app/screen/navigation_controller.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';

class NavigationMenubottom extends StatelessWidget {
  const NavigationMenubottom({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Obx(
      () => FlashyTabBar(
        selectedIndex: controller.selectedIndex.value,
        showElevation: true,
        onItemSelected: (index) => controller.selectedIndex.value = index,
        items: [
          FlashyTabBarItem(
            icon: Icon(Iconsax.home),
            activeColor: const Color.fromARGB(255, 44, 44, 44),
            title: Text('Home'),
          ),
          FlashyTabBarItem(
            icon: Icon(Iconsax.message_question),
            activeColor: Color.fromARGB(255, 85, 45, 45),
            title: Text('Quiz'),
          ),
          FlashyTabBarItem(
            icon: Icon(Iconsax.book_saved),
            activeColor: const Color.fromARGB(255, 44, 44, 44),
            title: Text('Saved'),
          ),
          FlashyTabBarItem(
            icon: Icon(Iconsax.setting),
            activeColor: const Color.fromARGB(255, 44, 44, 44),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}