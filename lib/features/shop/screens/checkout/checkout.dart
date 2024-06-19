import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/products/cart/coupon_widget.dart';
import 'package:e_commerce/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ConstantSizes.defaultSpace),
          child: Column(
            children: [
              //Items in cart
              const CartItems(showAddRemoveButton: false),
              const SizedBox(height: ConstantSizes.spaceBetweenItems),

              //Coupon textfield
              const CouponCode(),
              const SizedBox(height: ConstantSizes.spaceBetweenSections),

              //Billing section
              RoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(ConstantSizes.md),
                backgroundColor: dark ? ConstantColors.black : ConstantColors.white,
                child: const Column(
                  children: [
                    //Pricing
                    BillingAmountSection(),
                    SizedBox(height: ConstantSizes.spaceBetweenItems),

                    //Divider
                    Divider(),
                    SizedBox(height: ConstantSizes.spaceBetweenItems),

                    //Payment Methods
                    BillingPaymentSection(),
                    SizedBox(height: ConstantSizes.spaceBetweenItems),

                    //Address
                    BillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ConstantSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: ConstantImages.successPayment,
              title: 'Payment Success',
              subTitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),,
            )), 
          child: const Text('Checkout RM1860.00')),
      ),
    );
  }
}