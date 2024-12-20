import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive_app/widgets/glassyContainer.dart';

class backButton extends StatelessWidget {
  const backButton({
    this.fill,
    this.borderColor,
    super.key,
  });

  final Color? fill;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return glassyContainer(
      height: 54,
      fillColor: fill ,
      borderColor: borderColor,
      child: GestureDetector(
        onTap: Navigator.of(context).pop,
        child: SizedBox(
          width: 28,
          height: 28,
          child: SvgPicture.asset(
            'assets/svg/Arrow.svg',
          ),
        ),
      ),
    );
  }
}
