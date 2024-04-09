import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ConstantSizes.defaultSpace), 
          child: Column(
            children: [
              //Title
              Text(ConstantTexts.signUpTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: ConstantSizes.spaceBetweenSections),

              //Form
              Form(child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(labelText: ConstantTexts.firstName, prefixIcon: Icon(Iconsax.user)),
                        ),
                      )
                    ]
                  ),
                ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}