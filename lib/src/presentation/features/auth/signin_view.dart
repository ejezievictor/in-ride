part of '../../controller/signin_controller.dart';

/// Display the sigin page of the application when it's been opened
///
///

class _SigninView extends StatelessView<SigninScreen, SigninController> {
  const _SigninView(super.key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10, top: 30),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'InDrive',
                        style: AppTheme.displayLargeMedium.copyWith(
                          fontSize: 36,
                          color: Palette.backgroundColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Passenger',
                        style: AppTheme.textMediumRegular.copyWith(
                          fontSize: 16,
                          color: Palette.textDarkerColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Space.h(15),
                      Text(
                        'Login to your account',
                        style: AppTheme.textMediumRegular.copyWith(
                          fontSize: 16,
                          color: Palette.regularTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                        hintText: 'Email',
                        // icon: SvgPicture.asset(
                        //   Assets.svgs.messageSVG,
                        //   // height: 12.h,
                        // ),
                        iconData: Icons.email_rounded,
                        controller: controller._emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: emailValidator,
                      ),
                      Space.h(10),
                      CustomTextField(
                        hintText: 'Password',
                        // icon: SvgPicture.asset(
                        //   Assets.svgs.lockSVG,
                        //   height: 18.h,
                        // ),
                        iconData: Icons.lock_rounded,
                        controller: controller._passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        validator: passwordValidator,
                      ),
                      Space.h(8),
                      Align(
                        alignment: Alignment.centerRight,
                        child: RichText(
                          textAlign: TextAlign.end,
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'Forgot Password?',
                                style: AppTheme.textSmallRegular.copyWith(
                                    color: Palette.backgroundColor,
                                    fontWeight: FontWeight.w400),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {}),
                          ]),
                        ),
                      ),
                      Space.h(15),
                      CustomButton(
                        text: 'Login',
                        onPressed: () => controller.login(),
                      ),
                      Space.h(20),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 80.w,
                            height: 2,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Palette.backgroundColor.withOpacity(0.4)
                              ],
                            )),
                          ),
                          Space.w(10),
                          Text(
                            'Or Login with',
                            textAlign: TextAlign.center,
                            style: AppTheme.textSmallRegular
                                .copyWith(color: Palette.regularTextColor),
                          ),
                          Space.w(10),
                          Container(
                            width: 80.w,
                            height: 2,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                              colors: [
                                Palette.backgroundColor.withOpacity(0.5),
                                Colors.transparent
                              ],
                            )),
                          ),
                        ],
                      ),
                      Space.h(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Palette.backgroundColor
                                          .withOpacity(0.3),
                                      width: 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    Assets.images.googlePNG,
                                    height: 20.h,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Palette.backgroundColor
                                          .withOpacity(0.3),
                                      width: 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    Assets.images.facebookPNG,
                                    height: 20.h,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Palette.backgroundColor
                                          .withOpacity(0.3),
                                      width: 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    Assets.images.twitterPNG,
                                    height: 20.h,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Space.h(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account?',
                            style: AppTheme.textSmallMedium
                                .copyWith(color: Palette.regularTextColor),
                          ),
                          const SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {
                              final currentRoute =
                                  ModalRoute.of(context)?.settings.name;

                              // Check if the current route is the signup route
                              if (currentRoute == SignupScreen.routeName) {
                                // If we're already on the signup screen, just go back
                                Get.back();
                              } else {
                                // Navigate to the signup screen
                                Get.pushTo(SignupScreen.routeName);
                              }
                            },
                            child: Text(
                              'Sign Up',
                              style: AppTheme.textSmallMedium
                                  .copyWith(color: Palette.backgroundColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
