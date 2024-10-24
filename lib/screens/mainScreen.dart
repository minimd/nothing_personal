import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tilt/flutter_tilt.dart';

import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';
import 'package:rive_app/widgets/ordersType.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultStack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            glassyContainer(
              height: 54,
              width: 215,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SvgPicture.asset('assets/svg/hamburger.svg'),
                  ),
                  Image.asset(
                    'assets/svg/logo.png',
                    width: 110,
                  ),
                ],
              ),
            ),
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
        const SizedBox(
          height: 32,
        ),
        const TextLama(
          text: 'الطلبات',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 24,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          textDirection: TextDirection.ltr,
          children: [
            OrdersType(
              type: " الطلبات الراجعة",
              count: 0,
            ),
            OrdersType(
              type: " قيد التوصيل",
              count: 3,
            ),
            OrdersType(
              type: "الطلبات المنشأة",
              count: 2,
            ),
            OrdersType(
              type: "جميع االطلبات",
              count: 12,
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          textDirection: TextDirection.ltr,
          children: [
            OrdersType(
              type: 'المشاكل\n',
              count: 2,
              imageUrl: 'assets/svg/boxError.png',
            ),
            OrdersType(
              type: "الرواجع مع \n المندوب",
              count: 2,
            ),
            OrdersType(
              type: "الرواجع مع \nمندوب التوصيل",
              count: 1,
            ),
            OrderstypeNew()
          ],
        ),
        const SizedBox(
          height: 36,
        ),
        Image.asset('assets/svg/carouselPlaceholder.png'),
        const SizedBox(
          height: 36,
        ),
        glassyContainer(
            height: 72,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  SvgPicture.asset('assets/svg/wallet.svg'),
                  const TextLama(
                    text: 'المحفظة',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 47, 152, 1),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
