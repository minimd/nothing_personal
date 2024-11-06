import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive_app/screens/MainScreen.dart';
import 'package:rive_app/widgets/backButton.dart';
import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';

class Neworder2screen extends StatelessWidget {
  const Neworder2screen({super.key});

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
            'معلومات الطلب',
            style: TextStyle(
                fontFamily: 'lamasans',
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      const Spacer(),
      SvgPicture.asset(
        'assets/svg/Line.svg',
        height: 50,
      ),
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
                        const TextLama(text: "سعر الطلب "),
                        SvgPicture.asset(
                          'assets/svg/Money_Bag.svg',
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
                        const TextLama(text: "نوع العملية"),
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
                        const TextLama(text: "نوع البضاعة"),
                        SvgPicture.asset(
                          'assets/svg/shopping-bag.svg',
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
                        const TextLama(text: "عدد القطع"),
                        SvgPicture.asset(
                          'assets/svg/Bells.svg',
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
                        const TextLama(text: "حجم الطلب"),
                        SvgPicture.asset(
                          'assets/svg/Dashboard.svg',
                          height: 40,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Glassyfield(
                    blur: 0,
                    height: 96,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: TextLama(text: "الملاحظات"),
                    ),
                    alignment: Alignment.topRight,
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
                        const TextLama(text: "بروموكود"),
                        SvgPicture.asset(
                          'assets/svg/Offer.svg',
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
                        const TextLama(text: "نوع الطلب"),
                        SvgPicture.asset(
                          'assets/svg/Sort.svg',
                          height: 40,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Glassyfield(
                    blur: 0,
                    height: 110,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLama(text: "هل تريد ارسال مندوب استلام ؟"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              glassyContainer(
                                  blur: 0,
                                  borderRadius: 10,
                                  width: 70,
                                  height: 50,
                                  borderColor: Color(0xff002f98),
                                  child: TextLama(
                                    text: 'لا',
                                  )),
                              glassyContainer(
                                  blur: 0,
                                  borderRadius: 10,
                                  height: 50,
                                  width: 70,
                                  child: TextLama(
                                    text: 'نعم',
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainScreen()),
                      );
                    },
                    child: const glassyContainer(
                      blur: 7,
                      alignment: Alignment.center,
                      width: 220,
                      height: 48,
                      borderColor: Color.fromARGB(255, 0, 47, 152),
                      borderRadius: 10,
                      stroke: 2,
                      child: TextLama(
                        text: "معرفة سعر التوصيل",
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
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
        width: 170,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MainScreen()),
          );
        },
        height: 48,
        borderColor: const Color.fromARGB(255, 0, 47, 152),
        borderRadius: 10,
        stroke: 2,
        child: const TextLama(
          text: "إنشاء الطلب",
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      const Spacer()
    ]);
    ;
  }
}
