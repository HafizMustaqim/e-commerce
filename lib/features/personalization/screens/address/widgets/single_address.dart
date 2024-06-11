import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return RoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(ConstantSizes.md),
      backgroundColor: selectedAddress ? ConstantColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress
        ? Colors.transparent
        : dark
          ? ConstantColors.darkerGrey
          : ConstantColors.grey,
      margin: const EdgeInsets.only(bottom: ConstantSizes.spaceBetweenItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress ? dark ? ConstantColors.light : ConstantColors.dark : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nursyaqhirah',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: ConstantSizes.sm / 2),
              const Text('011 1111111', maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: ConstantSizes.sm / 2),
              const Text('Address Address Address Address Address Address Address Address Address Address Address', softWrap: true),
            ],
          ),
        ],
      ),
    );
  }
}