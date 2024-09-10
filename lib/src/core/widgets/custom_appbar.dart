import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:in_ride/src/core/utils/navigation/route_navigator.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';
import 'package:in_ride/src/core/utils/theme/theme.dart';

/// Custom app bar to display what will appear in the top bar of the app

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;
  final bool centerTitle;
  const CustomAppBar({
    super.key,
    this.title,
    this.leading,
    this.automaticallyImplyLeading = false,
    this.actions,
    this.centerTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      centerTitle: centerTitle,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: centerTitle
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.start,
          children: [
            if (automaticallyImplyLeading)
              IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back_ios,
                      size: 18.h, color: Palette.iconColor)),
            if (!automaticallyImplyLeading)
              leading ?? const SizedBox(width: 40),
            const Spacer(),
            DefaultTextStyle(
              style: AppTheme.textMediumBold.copyWith(
                color: Palette.textColor,
                height: 1.5,
              ),
              child: title ?? const SizedBox.shrink(),
            ),
            const Spacer(),
            if (actions != null) ...actions!,
            if (actions == null)
              const SizedBox(
                width: 40,
              ),
          ],
        ),
      ),
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
