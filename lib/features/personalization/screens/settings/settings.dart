import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:e_commerce/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/profile/profile.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

           //Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  CustomAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: ConstantColors.white))),

                  //User Profile Card
                  UserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: ConstantSizes.spaceBetweenSections),
                ],
              ),
            ),

            //Body
            Padding(
              padding: const EdgeInsets.all(ConstantSizes.defaultSpace),
              child: Column(
                children: [
                  //Account Settings
                  const SectionHeading(title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: ConstantSizes.spaceBetweenItems),

                  const SettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addreses', subTitle: 'Set Shopping delivery address'),
                  const SettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout'),
                  const SettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and Completed Orders'),
                  const SettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Withdraw balance to registered bank account'),
                  const SettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subTitle: 'List of all the discounted coupons'),
                  const SettingsMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification message'),
                  const SettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts'),

                  //App Settings
                  const SizedBox(height: ConstantSizes.spaceBetweenSections),
                  const SectionHeading(title: 'App Settings', showActionButton: false),
                  const SizedBox(height: ConstantSizes.spaceBetweenItems),
                  const SettingsMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase'),
                  SettingsMenuTile(icon: Iconsax.location, title: 'Geolocation', subTitle: 'Set recommendation based on location', trailing: Switch(value: true, onChanged: (value) {})),
                  SettingsMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subTitle: 'Search result is safe for all ages', trailing: Switch(value: false, onChanged: (value) {})),
                  SettingsMenuTile(icon: Iconsax.image, title: 'HD Image Quality', subTitle: 'Set image quality to be seen', trailing: Switch(value: false, onChanged: (value) {})),

                  //Logout Button
                  const SizedBox(height: ConstantSizes.spaceBetweenSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: ConstantSizes.spaceBetweenSections * 2.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
