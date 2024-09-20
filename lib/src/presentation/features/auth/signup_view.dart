part of '../../controller/signup_controller.dart';

class _SignupView extends StatelessView<SignupScreen, SignupController> {
  const _SignupView(super.key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(automaticallyImplyLeading: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10, top: 20),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                      Space.h(5),
                      Text(
                        'Passenger',
                        style: AppTheme.textMediumRegular.copyWith(
                          fontSize: 16,
                          color: Palette.textDarkerColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Space.h(25),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                        hintText: '    Name',
                        iconData: Icons.email_rounded,
                        controller: controller._emailController,
                        keyboardType: TextInputType.name,
                        validator: emailValidator,
                      ),
                      Space.h(10),
                      CustomTextField(
                        hintText: '   Phone',
                        iconData: Icons.phone_rounded,
                        controller: controller._emailController,
                        keyboardType: TextInputType.phone,
                        validator: emailValidator,
                      ),
                      Space.h(10),
                      CustomTextField(
                        hintText: '   Email',
                        iconData: Icons.email_rounded,
                        controller: controller._emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: emailValidator,
                      ),
                      Space.h(10),
                      CustomTextField(
                        hintText: '   Password',
                        iconData: Icons.lock_rounded,
                        controller: controller._passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        validator: passwordValidator,
                      ),
                      Space.h(50),
                      CustomButton(
                        text: 'Signup',
                        onPressed: () => Get.pushTo(OtpScreen.routeName),
                      ),
                      Space.h(10),
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
