import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:viteach_learning_app/screen/review_screen.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;


  // Update current page index when Page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot selected
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpToPage(index);

  }

  // Update current index and jump to next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.to(MyHomePageView()); // For the next screen
    }
    else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update current index and jump to last page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}