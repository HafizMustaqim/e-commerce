import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce/features/shop/screens/checkout/checkout.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall), showBackArrow: true),
      body: const Padding(
        padding: EdgeInsets.all(ConstantSizes.defaultSpace),
        //Items in Cart
        child: CartItems(),
      ),

      //Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ConstantSizes.defaultSpace),
        child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Checkout RM1860.00')),
      ),
    );
  }
}
