import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard ({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(backgroundImage: AssetImage(ConstantImages.user)),
            const SizedBox(width: ConstantSizes.spaceBetweenItems),
            Text('Nursyaqhirah', style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenItems),

        //Review
        Row(
          children: [
            const CustomRatingBarIndicator(rating: 4),
            const SizedBox(width: ConstantSizes.spaceBetweenItems),
            Text('09 Jun 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenItems),
        const ReadMoreText(
          'Review Text Review Text Review Text Review Text Review Text Review Text Review Text Review Text Review Text',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ConstantColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ConstantColors.primary),
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenItems),

        //Company Review
        RoundedContainer(
          backgroundColor: dark ? ConstantColors.darkerGrey : ConstantColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(ConstantSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Store\'s Admin', style: Theme.of(context).textTheme.titleMedium),
                    Text('10 Jun 2024', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: ConstantSizes.spaceBetweenItems),
                const ReadMoreText(
                  'Admin Text Admin Text Admin Text Admin Text Admin Text Admin Text Admin Text Admin Text Admin Text',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ConstantColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: ConstantColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: ConstantSizes.spaceBetweenSections),
      ],
    );
  }
}