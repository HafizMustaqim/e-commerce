import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      backgroundColor: dark ? ConstantColors.dark : ConstantColors.white,
      padding: const EdgeInsets.only(top: ConstantSizes.sm, bottom: ConstantSizes.sm, right: ConstantSizes.sm, left: ConstantSizes.md),
      child: Row(
        children: [
          //Textfield
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter Promo Code Here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
    
          //Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? ConstantColors.white.withOpacity(0.5) : ConstantColors.dark.withOpacity(0.5),
                backgroundColor: Colors.grey.withOpacity(0.2),
                side: BorderSide(color: Colors.grey.withOpacity(0.1)),
              ), 
              child: const Text('Apply')
            ),
          ),
        ],
      ),
    );
  }
}