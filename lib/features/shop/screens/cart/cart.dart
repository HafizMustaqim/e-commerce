import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall), showBackArrow: true),
      body: Padding(
        padding: const EdgeInsets.all(ConstantSizes.defaultSpace),
        child: Padding(
          padding: const EdgeInsets.all(ConstantSizes.defaultSpace / 2),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 6,
            separatorBuilder: (_, __) => const SizedBox(height: ConstantSizes.spaceBetweenSections), 
            itemBuilder: (_, index) => const Column(
              children: [
                CartItem(),
                SizedBox(height: ConstantSizes.spaceBetweenItems),
          
                Row(
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
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ConstantSizes.defaultSpace),
        child: ElevatedButton(onPressed: () {}, child: const Text('Checkout RM1860.00')),
      ),
    );
  }
}
