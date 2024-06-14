import 'package:e_commerce/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductQuantityWithAddRemoveButton extends StatelessWidget {
  const ProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: ConstantSizes.md,
          color: HelperFunctions.isDarkMode(context) ? ConstantColors.white : ConstantColors.black,
          backgroundColor: HelperFunctions.isDarkMode(context) ? ConstantColors.darkerGrey : ConstantColors.light,
        ),
        const SizedBox(width: ConstantSizes.spaceBetweenItems),
        Text('1', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: ConstantSizes.spaceBetweenItems),
    
        const CircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: ConstantSizes.md,
          color: ConstantColors.white,
          backgroundColor: ConstantColors.primary,
        ),
      ],
    );
  }
}
