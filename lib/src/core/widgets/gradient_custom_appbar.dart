import 'package:flutter/material.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';
import 'package:in_ride/src/core/utils/theme/theme.dart';

/// Gradient Custom app bar to display at the top of the app
class GradientCustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool centerTitle;

  const GradientCustomAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.centerTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Palette.textColor,
              Color(0xff4285f4),
              // Palette.textColor,
            ],
          ),
        ),
      ),
      centerTitle: centerTitle,
      title: title,
      leading: leading,
      actions: actions,
      titleTextStyle: AppTheme.textMediumBold.copyWith(
        color: Palette.textColor,
        height: 1.5,
      ),
      automaticallyImplyLeading: false,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
