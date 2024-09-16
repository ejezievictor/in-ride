import 'package:flutter/material.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';
import 'package:in_ride/src/core/utils/theme/theme.dart';
import 'package:pinput/pinput.dart';

/// A custom PIN input field with customizable parameters.
class CustomPinField extends StatelessWidget {
  /// The length of the PIN.
  final int length;

  /// Specifies whether the PIN input should be autofocused.
  final bool autofocus;

  /// Callback function that gets called when the PIN changes.
  final ValueChanged<String>? onChanged;

  /// Widget for the cursor.
  final Widget cursor;

  /// The default theme for the PIN input.
  final PinTheme defaultPinTheme;

  /// The theme for the focused state of the PIN input.
  final PinTheme focusedPinTheme;

  /// Creates a CustomPinField.
  CustomPinField({
    super.key,
    this.length = 6,
    this.autofocus = true,
    this.onChanged,
    this.cursor = const SizedBox(),
    PinTheme? defaultPinTheme,
    PinTheme? focusedPinTheme,
  })  : defaultPinTheme = defaultPinTheme ??
            PinTheme(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Palette.backgroundColor.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(8),
              ),
              textStyle:
                  AppTheme.displayMediumBold.copyWith(color: Colors.black),
            ),
        focusedPinTheme = focusedPinTheme ??
            PinTheme(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Palette.backgroundColor.withOpacity(0.4)),
                borderRadius: BorderRadius.circular(8),
              ),
              textStyle:
                  AppTheme.displayMediumBold.copyWith(color: Colors.black),
            );

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: length,
      autofocus: autofocus,
      onChanged: onChanged,
      cursor: cursor,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
    );
  }
}
