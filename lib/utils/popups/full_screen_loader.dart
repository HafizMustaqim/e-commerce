
import 'package:e_commerce/common/widgets/loaders/animation_loader.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Utility class for managing a full-screen loading dialog
class FullScreenLoader {
  //Open a full-screen loading dialog with a given text and animation
  //This method doesn't return anything
  //
  //Parameters:
  //  -text: The text to be displayed in the loading dialog
  //  -animation: The animation to be shown
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!, //for overlay dialogs
      barrierDismissible: false, //the dialog can't be dismissed by tapping outside it
      builder: (_) => PopScope(
        canPop: false, //disable popping with the back button 
        child: Container(
          color: HelperFunctions.isDarkMode(Get.context!) ? ConstantColors.dark : ConstantColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              AnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        )
      )
    );
  }

  //Stop the currently open loading dialog
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop(); // close dialog using navigator
  }
}