import 'package:flutter/material.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';

class CustomPasswordField extends StatefulWidget {
  /// TextEditingController for getting user input
  final TextEditingController controller;

  /// Show users hint of what they are to input
  final String? hintText;

  ///
  final IconData? iconData;

  ///
  final bool obscureText;

  /// A flag indicating whether the text field is enabled.
  final bool? enabled;

  /// The callback function for when the text field is tapped.
  final Function()? onTap;

  ///This is to explicity set the borderRadius of the form field
  final BorderRadius? borderRadius;

  /// The callback function for when the text field's value changes.
  final ValueChanged<String>? onChanged;

  /// The validator function for input validation.
  final String? Function(String?)? validator;

  /// The keyboard type of the text field.
  final TextInputType? keyboardType;

  /// Widget for the icon display
  final Widget? icon;

  /// If true the decoration's container is filled with [fillColor].
  final bool filled;

  /// The color to fill the decoration's container with, if [filled] is true.
  final Color? fillColor;

  const CustomPasswordField({
    super.key,
    required this.controller,
    this.hintText,
    this.iconData,
    this.obscureText = false,
    this.enabled,
    this.onTap,
    this.borderRadius,
    this.onChanged,
    this.validator,
    this.keyboardType,
    this.icon,
    this.filled = false,
    this.fillColor,
  });

  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  /// A flag indicating whether the password is obscured. Defaults to widget.obscureText.
  bool _obscureValue = true;

  @override
  void initState() {
    _obscureValue = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final InputDecoration inputDecoration = InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      hintText: widget.hintText,
      border: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Palette.backgroundColor,
          width: 1.0,
        ),
        borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Palette.backgroundColor,
          width: 1.0,
        ),
        borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
      ),
    );

    return IgnorePointer(
      ignoring: widget.onTap != null,
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        enabled: widget.enabled,
        cursorColor: Palette.regularTextColor,
        onChanged: widget.onChanged,
        // style: widget.textStyle ??
        // Theme.of(context)
        //     .textTheme
        //     .bodyMedium!
        //     .copyWith(color: AppTheme.textColor1),
        decoration: inputDecoration,
        obscureText: _obscureValue,
      ),
    );
  }
}
