import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:get/get_rx/get_rx.dart';
import 'package:waste_management/signup_screen/register.dart';

class OnboardingController extends GetxController{
  static OnboardingController get instance => Get.find();

 final pageController = PageController();
 Rx<int> currentPageIndex = 0.obs;
 // bool isLastPage = false;

 // void updatePageIndicator(index)=>currentPageIndex.value = index;

 void skipPage(){
   currentPageIndex.value  = 2;
   pageController.jumpToPage(2);
 }
 void nextPage(){
   if (currentPageIndex.value == 2){
     final storage = GetStorage();
     storage.write("IsFirstTime", false);
     Get.offAll(Register());
   }else{
     int page = currentPageIndex.value + 1;
     pageController.jumpToPage(page);
   }
 }
}