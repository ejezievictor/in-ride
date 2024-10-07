import 'package:flutter/material.dart';
import 'package:in_ride/src/core/utils/navigation/route_navigator.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';
import 'package:in_ride/src/core/utils/theme/theme.dart';
import 'package:in_ride/src/core/utils/validators.dart';
import 'package:in_ride/src/core/widgets/custom_button.dart';
import 'package:in_ride/src/core/widgets/custom_sizedbox.dart';
import 'package:in_ride/src/core/widgets/custom_textfield.dart';
import 'package:in_ride/src/presentation/features/features_barrel.dart';

part './../features/auth/signup_view.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  static const routeName = '/sign-up';

  @override
  State<SignupScreen> createState() => SignupController();
}

class SignupController extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) => _SignupView(this);
}
