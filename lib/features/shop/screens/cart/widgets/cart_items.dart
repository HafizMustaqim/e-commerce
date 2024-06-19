import 'package:e_commerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 6,
      separatorBuilder: (_, __) => const SizedBox(height: ConstantSizes.spaceBetweenSections), 
      itemBuilder: (_, index) => Column(
        children: [
          //Cart item
          const CartItem(),
          if(showAddRemoveButton) const SizedBox(height: ConstantSizes.spaceBetweenItems),

          //Add remove button row with total price
          if(showAddRemoveButton)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //Extra Space
                  SizedBox(width: 70),
                  // Add & Remove Buttons
                  ProductQuantityWithAddRemoveButton(),
                ],
              ),
              ProductPriceText(price: '186.00'),
            ],
          ),
        ],
      ), 
    );
  }
}