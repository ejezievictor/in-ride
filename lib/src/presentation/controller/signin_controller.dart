import 'package:flutter/material.dart';
import 'package:in_ride/src/core/utils/stateless_view.dart';

part './../features/auth/signin_view.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});
  static const routeName = '/sign-in';

  @override
  State<SigninScreen> createState() => SigninController();
}

class SigninController extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) => _SigninView(this);
}
