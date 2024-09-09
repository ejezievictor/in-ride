import 'package:flutter/material.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';

/// Textfield used by the app
///

class CustomTextField extends StatefulWidget {
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
  const CustomTextField({
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
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  /// A flag indicating whether the password is obscured. Defaults to widget.obscureText.
  bool _obscureValue = true;

  @override
  void initState() {
    _obscureValue = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final inputDecoration = InputDecoration(
      hintText: widget.hintText,
      hintStyle: const TextStyle(color: Colors.grey, letterSpacing: 0.5),
      isDense: true,
      prefixIcon: Container(
        decoration: const BoxDecoration(
          color: Palette.backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        child:
            widget.icon ?? Icon(widget.iconData, color: Colors.white, size: 18),
      ),
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
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      fillColor: widget.fillColor,
      filled: widget.filled,
    );
    return IgnorePointer(
      ignoring: widget.onTap != null,
      child: TextField(
        controller: widget.controller,
        obscureText: _obscureValue,
        enabled: widget.enabled,
        onChanged: widget.onChanged,
        keyboardType: widget.keyboardType,
        decoration: inputDecoration,
      ),
    );
  }
}
