import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viteach_learning_app/screen/saved_list.dart';
import 'package:viteach_learning_app/screen/search_bar.dart';

class NavigationController extends GetxController{
  final Rx<int> selectedIndex=0.obs;

  void changeIndex(int index){
    selectedIndex.value=index;
    update();
  }
  
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}