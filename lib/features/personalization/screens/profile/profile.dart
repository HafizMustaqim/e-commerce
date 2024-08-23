import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/images/circular_image.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/controllers/user_controller.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/change_name.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: const CustomAppBar(showBackArrow: true, title: Text('Profile')),

      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ConstantSizes.defaultSpace),
          child: Column(
            children: [
              //Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(image: ConstantImages.user, width: 80, height: 80, padding: 0),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              //Details
              const SizedBox(height: ConstantSizes.spaceBetweenItems / 2),
              const Divider(),
              const SizedBox(height: ConstantSizes.spaceBetweenItems),

              //Heading Profile Info
              const SectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: ConstantSizes.spaceBetweenItems),

              ProfileMenu(title: 'Name', value: controller.user.value.fullName, onPressed: () => Get.to(() => const ChangeName())),
              ProfileMenu(title: 'Username', value: controller.user.value.username, onPressed: () {}),

              const SizedBox(height: ConstantSizes.spaceBetweenItems),
              const Divider(),
              const SizedBox(height: ConstantSizes.spaceBetweenItems),

              //Heading Personal Info
              const SectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: ConstantSizes.spaceBetweenItems),

              ProfileMenu(title: 'User ID', value: controller.user.value.id, icon: Iconsax.copy, onPressed: () {}),
              ProfileMenu(title: 'E-mail', value: controller.user.value.email, onPressed: () {}),
              ProfileMenu(title: 'Phone Number', value: controller.user.value.phoneNumber, onPressed: () {}),
              ProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              ProfileMenu(title: 'Date of Birth', value: '1 Jan, 2000', onPressed: () {}),
              const Divider(),
              const SizedBox(height: ConstantSizes.spaceBetweenItems),

              Center(
                child: TextButton(
                  onPressed: () => controller.deleteAccountWarningPopup(), 
                  child: const Text('Close Account', style: TextStyle(color: Colors.red)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
