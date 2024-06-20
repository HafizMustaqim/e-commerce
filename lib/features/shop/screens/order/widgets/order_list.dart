import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: ConstantSizes.spaceBetweenItems),
      itemBuilder: (_, index) => RoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(ConstantSizes.md),
        backgroundColor: dark ? ConstantColors.dark : ConstantColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                //Shipping Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: ConstantSizes.spaceBetweenItems / 2),
      
                //Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing', style: Theme.of(context).textTheme.bodyLarge!.apply(color: ConstantColors.primary, fontWeightDelta: 1)),
                      Text('09 Aug 2023', style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
                //Arrow Right Icon
                IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_34, size: ConstantSizes.iconSm)),
              ],
            ),
            const SizedBox(height: ConstantSizes.spaceBetweenItems),
            
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //Tag Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: ConstantSizes.spaceBetweenItems / 2),
                  
                      //Order ID
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelMedium),
                            Text('#IR9801', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
      
                Expanded(
                  child: Row(
                    children: [
                      //Calendar Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: ConstantSizes.spaceBetweenItems / 2),
                  
                      //Order ID
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium),
                            Text('9 Aug 2023', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}