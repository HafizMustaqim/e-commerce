import 'package:e_commerce/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomBottomAddToCart extends StatelessWidget {
  const CustomBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: ConstantSizes.defaultSpace, vertical: ConstantSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? ConstantColors.darkerGrey : ConstantColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(ConstantSizes.cardRadiusLg),
          topRight: Radius.circular(ConstantSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircularIcon(
                icon: Iconsax.minus,
                backgroundColor: ConstantColors.darkGrey,
                width: 40,
                height: 40,
                color: ConstantColors.white,
              ),
              const SizedBox(width: ConstantSizes.spaceBetweenItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: ConstantSizes.spaceBetweenItems),
              const CircularIcon(
                icon: Iconsax.add,
                backgroundColor: ConstantColors.black,
                width: 40,
                height: 40,
                color: ConstantColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {}, 
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(ConstantSizes.md),
              backgroundColor: ConstantColors.black,
              side: const BorderSide(color: ConstantColors.black),
            ),
            child: const Text('Add to Cart')
          ),
        ],
      ),
    );
  }
}