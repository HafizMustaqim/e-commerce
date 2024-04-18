import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(ConstantTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: ConstantColors.grey)),
          Text(ConstantTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: ConstantColors.grey)),                      
        ],
      ),
      actions: [
        CartCounterIcon(onPressed: () {}, iconColor: ConstantColors.white)
      ],
    );
  }
}