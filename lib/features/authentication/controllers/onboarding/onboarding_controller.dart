import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get insance => Get.find();

  // Variables

  // Update current Index when page scroll
  void updatePageIndicator(index) {}

  //Jump to specific dot selected page
  void dotNavigationClick(index) {}

  //Update current Index & jump to next page
  void nextPage() {}

  //Update current Index & jump to last page
  void skipPage() {}
}