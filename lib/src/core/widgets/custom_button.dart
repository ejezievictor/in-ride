import 'package:flutter/material.dart';
import 'package:in_ride/src/core/utils/palette/color_palette.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final double borderRadius;
  final bool setColor;
  final Color? bgColor;
  final Color? textColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 50,
    this.borderRadius = 12,
    this.setColor = false,
    this.bgColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: setColor ? bgColor : Palette.backgroundColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            side: setColor
                ? const BorderSide(
                    color: Palette.backgroundColor,
                  )
                : BorderSide.none,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: 0,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
