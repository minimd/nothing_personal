import 'package:flutter/material.dart';
import 'package:rive_app/widgets/glassyContainer.dart';

class Glassyfield extends StatelessWidget {
  const Glassyfield(
      {super.key,
      this.width,
      this.height,
      this.borderRadius,
      this.blur,
      this.borderColor,
      this.alignment,
      this.stroke,
      this.fillColor,
      this.fontSize,
      this.fontWeight,
      this.text,
      this.child});
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? borderColor;
  final Color? fillColor;
  final double? stroke;
  final double? blur;
  final Alignment? alignment;
  final Widget? child;
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return glassyContainer(
      height: height ?? 64,
      width: width ?? double.infinity,
      blur: blur ?? 2.5,
      borderRadius: borderRadius ?? 12,
      borderColor: borderColor ?? const Color.fromARGB(255, 122, 122, 122),
      stroke: stroke ?? 1,
      alignment: alignment ?? Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: child ??
            TextLama(
              text: text,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
      ),
    );
  }
}

class TextLama extends StatelessWidget {
  const TextLama(
      {super.key,
      required this.text,
      this.fontSize,
      this.fontWeight,
      this.color});

  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'lamasans',
        fontSize: fontSize ?? 20,
        fontWeight: fontWeight ?? FontWeight.w300,
        color: color ?? Colors.black,
      ),
    );
  }
}
