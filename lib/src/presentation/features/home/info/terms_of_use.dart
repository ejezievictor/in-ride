import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:in_ride/src/core/utils/navigation/route_navigator.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';
import 'package:in_ride/src/core/utils/theme/theme.dart';
import 'package:in_ride/src/core/widgets/custom_button.dart';
import 'package:in_ride/src/core/widgets/custom_sizedbox.dart';
import 'package:in_ride/src/core/widgets/gradient_custom_appbar.dart';
import 'package:in_ride/src/presentation/features/features_barrel.dart';

class TermsOfUse extends StatelessWidget {
  static const routeName = '/terms';
  const TermsOfUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientCustomAppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.chevron_left,
            size: 18.h,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Space.h(8),
              Container(
                width: 36,
                height: 5,
                decoration: BoxDecoration(
                  color: Palette.bottomsheetColor,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Space.h(20),
              SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'InDrive Terms of Use',
                          style: AppTheme.displayPSmallBold.copyWith(
                            fontSize: 20,
                            color: Palette.headerTextColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Space.h(10),
                        Text(
                          'By downloading, accessing, or using this application, you agree to the following terms and conditions. If you do not agree with them, please do not use the app.',
                          style: AppTheme.displayLargeMedium.copyWith(
                            fontSize: 14,
                            color: Palette.textColor3,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Space.h(10),
                        Text(
                          '1. Use of the InDrive Passenger App:',
                          style: AppTheme.displayLargeMedium.copyWith(
                            fontSize: 14,
                            color: Palette.textColor3,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Text(
                            'The InDrive Passenger App is designed for passengers who request rides from professional drivers. Key functionalities include requesting rides, tracking driver locations, communicating with drivers, and completing trips. Passengers can view trip history, manage their account, and rate drivers through the app.',
                            style: AppTheme.displayLargeMedium.copyWith(
                              fontSize: 14,
                              color: Palette.textColor3,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Space.h(10),
                        Text(
                          '2. User Responsibility:',
                          style: AppTheme.displayLargeMedium.copyWith(
                            fontSize: 14,
                            color: Palette.textColor3,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Text(
                            'Prioritize safety by following instructions from drivers and using responsibly. Use the app only when safe to do so. Follow all laws and regulations.',
                            style: AppTheme.displayLargeMedium.copyWith(
                              fontSize: 14,
                              color: Palette.textColor3,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Space.h(50),
                        CustomButton(
                          text: 'Agree',
                          onPressed: () =>
                              Get.pushTo(EnablePushNotification.routeName),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
