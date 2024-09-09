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
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                      Space.h(20),
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
                        hintText: 'Name',
                        icon: SvgPicture.asset(
                          Assets.svgs.profileSVG,
                          height: 18.h,
                        ),
                        controller: controller._emailController,
                        keyboardType: TextInputType.name,
                        validator: emailValidator,
                      ),
                      Space.h(10),
                      CustomTextField(
                        hintText: 'Phone',
                        icon: SvgPicture.asset(
                          Assets.svgs.phoneSVG,
                          height: 18.h,
                        ),
                        controller: controller._emailController,
                        keyboardType: TextInputType.phone,
                        validator: emailValidator,
                      ),
                      Space.h(10),
                      CustomTextField(
                        hintText: 'Email',
                        icon: SvgPicture.asset(
                          Assets.svgs.messageSVG,
                          height: 18.h,
                        ),
                        controller: controller._emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: emailValidator,
                      ),
                      Space.h(10),
                      CustomTextField(
                        hintText: 'Password',
                        icon: SvgPicture.asset(
                          Assets.svgs.lockSVG,
                          height: 18.h,
                        ),
                        controller: controller._passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        validator: passwordValidator,
                      ),
                      Space.h(30),
                      CustomButton(
                        text: 'Signup',
                        onPressed: () {},
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
