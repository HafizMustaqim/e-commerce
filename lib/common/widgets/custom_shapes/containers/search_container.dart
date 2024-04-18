import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key, 
    required this.text, 
    this.icon = Iconsax.search_normal, 
    this.showBackground = true, 
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ConstantSizes.cardRadiusLg),
        child: Container(
          width: DeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(ConstantSizes.md),
          decoration: BoxDecoration(
            color: showBackground ? dark ? ConstantColors.dark : ConstantColors.light : Colors.transparent,
            borderRadius: BorderRadius.circular(ConstantSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: ConstantColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: ConstantColors.darkGrey),
              const SizedBox(width: ConstantSizes.spaceBetweenItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}