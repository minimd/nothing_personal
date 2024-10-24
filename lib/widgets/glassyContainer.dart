import 'dart:ui';

import 'package:flutter/material.dart';

//this widget is the glassy container.. it is sooo goood

class glassyContainer extends StatelessWidget {
  const glassyContainer(
      {super.key,
      this.width,
      required this.height,
      this.borderRadius,
      this.blur,
      this.borderColor,
      this.alignment,
      this.stroke,
      this.fillColor,
      required this.child});
  final double? width;
  final double height;
  final double? borderRadius;
  final Color? borderColor;
  final Color? fillColor;
  final double? stroke;
  final double? blur;
  final Alignment? alignment;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? height,
      height: height,
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius ?? height / 2),
        // this prevents the backdrop to be applied on all the screen
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur ?? 8, sigmaY: blur ?? 8),
          child: Container(
            decoration: BoxDecoration(
                color: fillColor ?? const Color.fromRGBO(209, 209, 209, 0.1),
                borderRadius: BorderRadius.circular(borderRadius ?? height / 2),
                border: Border.all(
                  color: borderColor ?? const Color.fromRGBO(216, 216, 216, 1),
                  width: stroke ?? 1,
                )),
            width: width ?? height,
            height: height,
            child: Align(
              alignment: alignment ?? Alignment.center,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
