import 'package:get/get.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();

  // Variables


  // Update current page index when Page scroll
  void updatePageIndicator(){}

  // Jump to the specific dot selected
  void dotNavigationClick(){}

  // Update current index and jump to next page
  void nextPage(){}

  // Update current index and jump to last page
  void skipPage(){}
}