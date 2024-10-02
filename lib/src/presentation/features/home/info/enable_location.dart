import 'package:flutter/material.dart';
import 'package:in_ride/src/core/utils/assets.gen.dart';
import 'package:in_ride/src/core/utils/navigation/route_navigator.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';
import 'package:in_ride/src/core/utils/theme/theme.dart';
import 'package:in_ride/src/core/widgets/custom_button.dart';
import 'package:in_ride/src/core/widgets/custom_sizedbox.dart';
import 'package:in_ride/src/presentation/features/features_barrel.dart';

class EnableLocation extends StatelessWidget {
  static const routeName = '/enable-location';
  const EnableLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: Text(
                      textAlign: TextAlign.end,
                      'Skip',
                      style: AppTheme.textMediumRegular.copyWith(
                          color: Palette.backgroundColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Image.asset(Assets.images.location),
                Space.h(10),
                Text(
                  textAlign: TextAlign.center,
                  'Enable Location',
                  style: AppTheme.displayPSmallBold.copyWith(
                    fontSize: 21,
                    color: Palette.textColor3,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Space.h(10),
                Text(
                  textAlign: TextAlign.center,
                  'To enable location, show we will know your location.',
                  style: AppTheme.textMediumRegular.copyWith(
                    fontSize: 18,
                    color: Palette.textColor3,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Space.h(30),
                CustomButton(
                  text: 'Enable',
                  onPressed: () => Get.pushReplacement(HomeScreen.routeName),
                ),
                Space.h(10),
                CustomButton(
                  text: 'Use Current Location',
                  setColor: true,
                  textColor: Palette.backgroundColor,
                  bgColor: Palette.textColor,
                  onPressed: () => Get.pushReplacement(HomeScreen.routeName),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
