import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/font.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    this.borderRadius, required this.textStyle, this.onPressed,
  });

  final Color backgroundColor;
  final Color textColor;
  final String text;
  final BorderRadius? borderRadius;
  final TextStyle textStyle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        onPressed:onPressed,
        child: Text(
          "${text}",
          style: textStyle.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
