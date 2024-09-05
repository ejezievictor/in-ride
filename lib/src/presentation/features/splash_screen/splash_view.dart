part of './../../controller/splash_controller.dart';

/// Display the startup logo of the application when it's been opened
///
///

class _SplashView extends StatelessView<SplashScreen, SplashScreenController> {
  const _SplashView(super.state);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.themeData.scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SlideTransition(
            position: controller.slideAnimation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  decoration: ShapeDecoration(
                    color: Palette.textColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Space.h(10),
                FadeTransition(
                  opacity: controller.fadeAnimation,
                  child: Text(
                    'InRide',
                    style: AppTheme.displayLargeBold.copyWith(
                      fontSize: 70,
                    ),
                  ),
                ),
                Space.h(15),
                FadeTransition(
                  opacity: controller.fadeAnimation,
                  child: Text(
                    'Passenger',
                    style: AppTheme.displayLargeBold.copyWith(
                      fontSize: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
