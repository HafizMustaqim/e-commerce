import 'package:e_commerce/common/widgets/brands/brand_card.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: ConstantColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.only(bottom: ConstantSizes.md),
      margin: const EdgeInsets.only(bottom: ConstantSizes.spaceBetweenItems),
      child: Column(
        children: [
          //Brand with products count
          const BrandCard(showBorder: false),
          const SizedBox(height: ConstantSizes.spaceBetweenItems),
          
          //Brand top 3 product images
          Row(children: images.map((image) => brandTopProductImageWidget(image, context)).toList())
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: RoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(ConstantSizes.md),
        margin: const EdgeInsets.only(right: ConstantSizes.sm),
        backgroundColor: HelperFunctions.isDarkMode(context) ? ConstantColors.darkerGrey : ConstantColors.light,
        child: Image(fit: BoxFit.contain, image:  AssetImage(image)),
      ),
    );
  }
}
