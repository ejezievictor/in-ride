import 'package:flutter/material.dart';
import 'package:in_ride/src/core/utils/assets.gen.dart';
import 'package:in_ride/src/core/utils/navigation/route_navigator.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';
import 'package:in_ride/src/core/utils/theme/theme.dart';
import 'package:in_ride/src/core/widgets/custom_button.dart';
import 'package:in_ride/src/core/widgets/custom_sizedbox.dart';
import 'package:in_ride/src/presentation/features/features_barrel.dart';

class EnablePushNotification extends StatelessWidget {
  static const routeName = '/enable-notification';
  const EnablePushNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Space.h(20),
                Image.asset(Assets.images.notification),
                Space.h(20),
                Text(
                  textAlign: TextAlign.center,
                  'Get real-time updates by activating Push notifications',
                  style: AppTheme.displayPSmallBold.copyWith(
                    fontSize: 21,
                    color: Palette.textColor3,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Space.h(10),
                Text(
                  textAlign: TextAlign.center,
                  'Receive notifications about your driver\'s arrival time and location, trip updates and changes, Important safety alerts and reminders',
                  style: AppTheme.textMediumRegular.copyWith(
                    fontSize: 18,
                    color: Palette.textColor3,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Space.h(30),
                CustomButton(
                  text: 'Accept',
                  onPressed: () => Get.pushTo(EnableLocation.routeName),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
