part of '../../controller/signin_controller.dart';

/// Display the startup logo of the application when it's been opened
///
///

class _SigninView extends StatelessView<SigninScreen, SigninController> {
  const _SigninView(super.key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [Text('Welcome to Signin page')],
        ),
      ),
    );
  }
}
