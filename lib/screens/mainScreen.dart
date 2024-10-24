import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultStack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  glassyContainer(
                    height: 54,
                    child: SvgPicture.asset('assets/svg/search.svg'),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  glassyContainer(
                    height: 54,
                    child: SvgPicture.asset('assets/svg/reload.svg'),
                  )
                ],
              ),
            ],
          ),
        ],
      )
    ;
  }
}

