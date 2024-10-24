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
      this.style,
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
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return glassyContainer(
      height: height ?? 64,
      width: width ?? double.infinity,
      blur: blur ?? 2.5,
      borderRadius: borderRadius ?? 12,
      borderColor: borderColor ?? Colors.black,
      stroke: stroke ?? 2,
      alignment: alignment ?? Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child?? TextLama(text: text, style: style),
      ),
    );
  }
}

class TextLama extends StatelessWidget {
  const TextLama({
    super.key,
    required this.text,
     this.style,
  });

  final String? text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: style ??
          const TextStyle(
              fontFamily: 'lamasans',
              fontSize: 20,
              fontWeight: FontWeight.w300),
    );
  }
}
