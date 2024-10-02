part of '../../controller/signup_controller.dart';

class _SignupView extends StatelessView<SignupScreen, SignupController> {
  const _SignupView(super.key);

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
                        'Create your account',
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
                        hintText: 'Name',
                        iconData: Icons.email_rounded,
                        controller: controller._emailController,
                        keyboardType: TextInputType.name,
                        validator: emailValidator,
                      ),
                      Space.h(10),
                      CustomTextField(
                        hintText: 'Phone',
                        iconData: Icons.phone_rounded,
                        controller: controller._emailController,
                        keyboardType: TextInputType.phone,
                        // validator: emailValidator,
                      ),
                      Space.h(10),
                      CustomTextField(
                        hintText: 'Email',
                        iconData: Icons.email_rounded,
                        controller: controller._emailController,
                        keyboardType: TextInputType.emailAddress,
                        // validator: emailValidator,
                      ),
                      Space.h(10),
                      CustomTextField(
                        hintText: 'Password',
                        iconData: Icons.lock_rounded,
                        controller: controller.passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        validator: passwordValidator,
                      ),
                      Space.h(30),
                      CustomButton(
                        text: 'Register',
                        onPressed: () => Get.pushTo(OtpScreen.routeName),
                      ),
                      Space.h(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
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
                                Get.pushTo(SigninScreen.routeName);
                              }
                            },
                            child: Text(
                              'Log In',
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
