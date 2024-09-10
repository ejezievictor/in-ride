import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:in_ride/src/core/utils/assets.gen.dart';
import 'package:in_ride/src/core/utils/navigation/route_navigator.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';
import 'package:in_ride/src/core/utils/theme/theme.dart';
import 'package:in_ride/src/core/utils/validators.dart';
import 'package:in_ride/src/core/widgets/custom_appbar.dart';
import 'package:in_ride/src/core/widgets/custom_button.dart';
import 'package:in_ride/src/core/widgets/custom_sizedbox.dart';
import 'package:in_ride/src/core/widgets/custom_textfield.dart';
import 'package:in_ride/src/presentation/features/features_barrel.dart';

part './../features/auth/signin_view.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});
  static const routeName = '/sign-in';

  @override
  State<SigninScreen> createState() => SigninController();
}

class SigninController extends State<SigninScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) => _SigninView(this);
}
