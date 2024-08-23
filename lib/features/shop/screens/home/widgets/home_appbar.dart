import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce/common/widgets/shimmer/shimmer.dart';
import 'package:e_commerce/features/personalization/controllers/user_controller.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(ConstantTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: ConstantColors.grey)),
          Obx(() {
            if (controller.profileLoading.value) {
              //Display a shimmer loader while user profile is being loaded
              return const CustomShimmerEffect(width: 80, height: 15);
            } else {
              return Text(controller.user.value.fullName, style: Theme.of(context).textTheme.headlineSmall!.apply(color: ConstantColors.grey));
            }
          }),
        ],
      ),
      actions: [
        CartCounterIcon(onPressed: () {}, iconColor: ConstantColors.white)
      ],
    );
  }
}