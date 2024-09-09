part of './../../controller/splash_controller.dart';

/// Display the startup logo of the application when it's been opened
///
///

class _SplashView extends StatelessView<SplashScreen, SplashScreenController> {
  const _SplashView(super.state);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Center(
        child: SlideTransition(
          position: controller.slideAnimation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.135,
                width: MediaQuery.sizeOf(context).width * 0.3,
                // margin: const EdgeInsets.all(20),
                decoration: ShapeDecoration(
                  color: Palette.textColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              // Space.h(10),
              FadeTransition(
                opacity: controller.fadeAnimation,
                child: Text(
                  'InRide',
                  style: AppTheme.displayLargeBold
                      .copyWith(fontSize: 70, fontWeight: FontWeight.w900),
                ),
              ),
              // Space.h(5),
              FadeTransition(
                opacity: controller.fadeAnimation,
                child: Text(
                  'Passenger',
                  style: AppTheme.displayLargeMedium
                      .copyWith(fontSize: 32, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
