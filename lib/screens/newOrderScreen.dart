import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive_app/screens/MainScreen.dart';
import 'package:rive_app/screens/newOrder2Screen.dart';
import 'package:rive_app/widgets/backButton.dart';
import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';

class Neworderscreen extends StatelessWidget {
  const Neworderscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultStack(children: [
      const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [backButton()],
      ),
      const SizedBox(
        width: double.infinity,
        child: Text(
          'إنشاء طلب',
          style: TextStyle(
              fontFamily: 'lamasans',
              fontSize: 54,
              fontWeight: FontWeight.bold),
        ),
      ),
      const Row(
        children: [
          Text(
            'معلومات الزبون',
            style: TextStyle(
                fontFamily: 'lamasans',
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      const Spacer(),
      SvgPicture.asset('assets/svg/address-book.svg'),
      const SizedBox(
        height: 32,
      ),
      ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 330,
        ),
        child: glassyContainer(
          width: double.infinity,
          borderRadius: 12,
          blur: 7,
          fillColor: Colors.transparent,
          height: MediaQuery.of(context).size.height * 0.4,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Glassyfield(
                    blur: 0,
                    height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextLama(text: "اسم المستلم"),
                        SvgPicture.asset(
                          'assets/svg/User.svg',
                          height: 40,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Glassyfield(
                    height: 48,
                    blur: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextLama(text: "رقم هاتف المستلم"),
                        SvgPicture.asset(
                          'assets/svg/Call_Circle.svg',
                          height: 40,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Glassyfield(
                    blur: 0,
                    height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextLama(text: "المدينة"),
                        SvgPicture.asset(
                          'assets/svg/Circle_Right.svg',
                          height: 40,
                          color: const Color(0xff002f98),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Glassyfield(
                    blur: 0,
                    height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextLama(text: "المنطقة"),
                        SvgPicture.asset(
                          'assets/svg/Circle_Right.svg',
                          height: 40,
                          color: const Color(0xff002f98),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Glassyfield(
                    blur: 0,
                    height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextLama(text: "اقرب نقطة دالة"),
                        SvgPicture.asset(
                          'assets/svg/map-pin.svg',
                          height: 40,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      const Spacer(),
      glassyContainer(
        blur: 7,
        alignment: Alignment.center,
        width: 120,
        height: 48,
        borderColor: const Color.fromARGB(255, 0, 47, 152),
        borderRadius: 10,
        stroke: 2,
        child: const TextLama(
          text: "التالي",
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Neworder2screen()));
        },
      ),
      const Spacer()
    ]);
  }
}
