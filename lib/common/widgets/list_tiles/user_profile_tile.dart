import 'package:e_commerce/common/widgets/images/circular_image.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(image: ConstantImages.user, width: 50, height: 50, padding: 0),
      title: Text('Hafiz Mustaqim', style: Theme.of(context).textTheme.headlineSmall!.apply(color: ConstantColors.white)),
      subtitle: Text('hafiz@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: ConstantColors.white)),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: ConstantColors.white)),
    );
  }
}