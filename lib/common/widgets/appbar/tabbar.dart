import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? ConstantColors.black : ConstantColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: ConstantColors.primary,
        labelColor: dark ? ConstantColors.white : ConstantColors.primary,
        unselectedLabelColor: ConstantColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());

}