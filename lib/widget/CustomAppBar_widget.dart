import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.color, this.imageWidth, this.imageHeight});

  final double? imageWidth;
  final double? imageHeight;

  final Color color;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
              bottomLeft:Radius.circular(100),
              bottomRight:Radius.circular(100)
          )
      ),

      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
            child: Image.asset(
                "assets/logo.png",
              width: imageWidth,
              height: imageHeight,
            )
        ),
      ),
    );
  }
}
