import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:in_ride/src/core/utils/helpers/functions.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';
import 'package:in_ride/src/core/utils/theme/theme.dart';
import 'package:in_ride/src/core/widgets/custom_appbar.dart';
import 'package:in_ride/src/core/widgets/custom_button.dart';
import 'package:in_ride/src/core/widgets/custom_pinput.dart';
import 'package:in_ride/src/core/widgets/custom_sizedbox.dart';
import 'package:in_ride/src/core/widgets/custom_text.dart';
import 'package:in_ride/src/presentation/features/features_barrel.dart';

part './../features/auth/otp_view.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});
  static const routeName = '/otp';

  @override
  State<OtpScreen> createState() => OtpController();
}

class OtpController extends State<OtpScreen> {
  final TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) => _OtpView(this);
}
