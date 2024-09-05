import 'dart:async';

import 'package:flutter/material.dart';
import 'package:in_ride/src/core/utils/navigation/route_navigator.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';
import 'package:in_ride/src/core/utils/stateless_view.dart';
import 'package:in_ride/src/core/utils/theme/theme.dart';
import 'package:in_ride/src/core/widgets/custom_sizedbox.dart';
import 'package:in_ride/src/presentation/features/features_barrel.dart';

part './../features/splash_screen/splash_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = '/';

  @override
  State<SplashScreen> createState() => SplashScreenController();
}

class SplashScreenController extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> slideAnimation;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    animateNextPage();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    // animateNextPage();
    super.dispose();
  }

  void animateNextPage() {
    slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeOut,
    ));

    fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeIn,
    ));

    controller.forward();

    Timer(
        const Duration(seconds: 3),
        () => CustomNavigator.pushReplacementNamedToWithRoute(
            SigninScreen.routeName));
  }

  @override
  Widget build(BuildContext context) => _SplashView(this);
}
