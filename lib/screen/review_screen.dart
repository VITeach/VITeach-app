import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:viteach_learning_app/global_variables.dart';
import 'package:viteach_learning_app/screen/course_card.dart';
import 'package:viteach_learning_app/screen/course_page.dart';
import 'package:viteach_learning_app/screen/navigation_controller.dart';
import 'package:viteach_learning_app/screen/navigation_menubottom.dart';
import 'package:viteach_learning_app/screen/saved_list.dart';
import 'package:viteach_learning_app/screen/search_bar.dart';
import 'package:viteach_learning_app/screen/settings.dart';
import 'package:viteach_learning_app/screen/v_app_screen.dart';
import 'package:viteach_learning_app/utils/constants/colors.dart';
import 'package:viteach_learning_app/utils/constants/sizes.dart';
import 'package:viteach_learning_app/utils/device/device_utilities.dart';
import 'package:viteach_learning_app/utils/theme/custom_themes/text_themes.dart';
import 'package:viteach_learning_app/widgets/quote_widget.dart';
import 'package:viteach_learning_app/quiz/view/subject_list.dart';

class MyHomePageView extends StatefulWidget {
  const MyHomePageView({super.key});

  @override
  State<MyHomePageView> createState() => _MyHomePageViewState();
}

class _MyHomePageViewState extends State<MyHomePageView> {
  final List<String> filters = const ["All", "Class 1", "Class 2", "Class 3"];
  late String selectedfilter = filters[0];

  @override
  void initState() {
    super.initState();
    selectedfilter = filters[0];
  }

  List<Widget> pages = [VSearchBar(), SubjectListScreen(), SavedList(), Settings_Page()];
  final Rx<int> selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationcontroller =
        Get.put(NavigationController(), permanent: false);
    return Scaffold(
      body: Obx(() => IndexedStack(
          index: navigationcontroller.selectedIndex.value,
          children: [VSearchBar(), SubjectListScreen(), SavedList(), Settings_Page()])),
    );
  }
}
