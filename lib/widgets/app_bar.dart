import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:viteach_learning_app/utils/constants/sizes.dart';
import 'package:viteach_learning_app/utils/device/device_utilities.dart';

class VAppBar extends StatelessWidget implements PreferredSizeWidget {
  const VAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final VoidCallback? leadingOnPressed;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: VSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Iconsax.arrow_left))
            : leadingIcon != null ? IconButton(
                onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
                title: title,
                actions: actions),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(VDeviceUtils.getAppBarHeight());
}
