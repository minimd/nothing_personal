import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive_app/screens/ordersScreen.dart';
import 'package:rive_app/screens/searchScreenEmpty.dart';

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
            Hero(
              tag: 'header',
              transitionOnUserGestures: true,
              child: glassyContainer(
                height: 54,
                width: MediaQuery.sizeOf(context).width * 0.55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  textDirection: TextDirection.ltr,
                  children: [
                    Image.asset(
                      'assets/svg/logo.png',
                      width: MediaQuery.sizeOf(context).width * 0.3,
                    ),
                    SvgPicture.asset('assets/svg/hamburger.svg'),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                glassyContainer(
                  height: 54,
                  child: SvgPicture.asset('assets/svg/search.svg'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Searchscreenempty()));
                  },
                ),
                const SizedBox(
                  width: 6,
                ),
                Hero(
                  tag: 'back',
                  child: glassyContainer(
                    height: 54,
                    child: SvgPicture.asset('assets/svg/reload.svg'),
                  ),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          textDirection: TextDirection.ltr,
          children: [
            const OrdersType(
              type: " الطلبات الراجعة",
              count: 0,
            ),
            const OrdersType(
              type: " قيد التوصيل",
              count: 3,
            ),
            const OrdersType(
              type: "الطلبات المنشأة",
              count: 2,
            ),
            OrdersType(
              type: "جميع االطلبات",
              count: 12,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Ordersscreen()));
              },
            ),
          ],
        ),
        const Spacer(),
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
        const Spacer(),
        Image.asset('assets/svg/carouselPlaceholder.png'),
        const Spacer(),
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
          ),
        ),
        const Spacer()
      ],
    );
  }
}
