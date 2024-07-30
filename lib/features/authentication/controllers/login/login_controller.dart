import 'package:e_commerce/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce/features/personalization/controllers/user_controller.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/helpers/network_manager.dart';
import 'package:e_commerce/utils/popups/full_screen_loader.dart';
import 'package:e_commerce/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {

  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }

  //email and password signin
  Future<void> emailAndPasswordSignIn() async {
    try {
      //start loading
      FullScreenLoader.openLoadingDialog('Logging you in...', ConstantImages.processing);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      //form validation
      if(!loginFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

      //save data if Remember Me is selected
      if(rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      //login user using E-Mail & Password authentication
      final userCredentials = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      //remove loader
      FullScreenLoader.stopLoading();

      //redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }

  //Google SignIn Authentication
  Future<void> googleSignIn() async {
    try {
      //start loading
      FullScreenLoader.openLoadingDialog('Logging you in...', ConstantImages.processing);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      //Google Authentication
      final userCredentials = await AuthenticationRepository.instance.signInWithGoogle();

      //save user record
      await userController.saveUserRecord(userCredentials);

      //remove loader
      FullScreenLoader.stopLoading();

      //redirect to home screen
      AuthenticationRepository.instance.screenRedirect();
      
    } catch (e) {
      Loaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}