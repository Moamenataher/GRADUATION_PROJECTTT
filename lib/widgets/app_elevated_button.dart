import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.onPressed,
    this.backgroundColor,
    required this.label,
    this.labelStyle,
    this.shape,
    this.width,
    this.height,
  });

  final VoidCallback onPressed;
  final Color? backgroundColor;
  final String label;
  final TextStyle? labelStyle;
  final OutlinedBorder? shape;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? const Color(0xff58B0CD),
        fixedSize: Size(
          width ?? double.maxFinite,
          height ?? 56,
        ),
        shape: shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
      ),
      child: Text(
        label,
        style: labelStyle ??
            const TextStyle(
              fontSize: 18,
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
