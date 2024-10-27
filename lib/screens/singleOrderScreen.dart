import 'package:flutter/material.dart';
import 'package:rive_app/widgets/backButton.dart';
import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';
import 'package:rive_app/widgets/storyPoint.dart';

class Singleorderscreen extends StatelessWidget {
  const Singleorderscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultStack(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 54,
          ),
          Hero(
            tag: 'header',
            child: glassyContainer(
              height: 54,
              width: 170,
              child: Image.asset(
                'assets/svg/logo.png',
                width: 110,
              ),
            ),
          ),
          const Hero(tag: 'back', child: backButton())
        ],
      ),
      const SizedBox(
        height: 32,
      ),
      const TextLama(
        text: 'معلومات الطلب',
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      const SizedBox(
        height: 24,
      ),
      glassyContainer(
        borderRadius: 14,
        height: MediaQuery.sizeOf(context).height - 404,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
          child: Column(
            children: [
              Container(
                height: 50,
                width: 65,
                color: const Color(0xff002F98),
                alignment: Alignment.center,
                child: const TextLama(
                  text: '#3',
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextLama(
                            text: 'بهاء',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          Row(
                            children: [
                              const Column(
                                children: [
                                  TextLama(
                                    text: '07703553448',
                                    color: Color(0xff002F98),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  TextLama(
                                    text: '07703553448',
                                    color: Color(0xff002F98),
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Image.asset('assets/svg/phone.png', width: 30),
                            ],
                          ),
                          const Row(
                            children: [
                              TextLama(
                                text: 'النوع:',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              TextLama(
                                text: ' ماوس',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0XFF002f98),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              TextLama(
                                text: 'الحجم:',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              TextLama(
                                text: ' عادي',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF002f98),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              TextLama(
                                text: 'بروموكود:',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              TextLama(
                                text: ' لا يوجد',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF002f98),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              TextLama(
                                text: 'ملاحظات:',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              TextLama(
                                text: ' قابل للكسر',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0XFF002f98),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              TextLama(
                                text: 'العنوان:',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              TextLama(
                                text: ' بغداد - شارع فلسطين',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF002f98),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              TextLama(
                                text: 'اقرب نقطة:',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              TextLama(
                                text: ' شارع الطارق',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF002f98),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Row(
                            children: [
                              TextLama(
                                text: 'الكمية:',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              TextLama(
                                text: ' 1',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF002f98),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              TextLama(
                                text: 'السعر مع التوصيل:',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                              TextLama(
                                text: ' 40,000',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0XFF002f98),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      const Spacer(),
      const glassyContainer(
          height: 122,
          width: double.infinity,
          borderRadius: 14,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Storypoint(
                    pointNumber: 01,
                    status: "تم تفعيل البريد بنجاح",
                    date: "19:30:07  2024-10-5",
                    fontColor: Color(0xff002f98),
                  ),
                ),
                Expanded(
                  child: Storypoint(
                    pointNumber: 02,
                    status: "في المخزن",
                    date: "19:35:07  2024-10-5",
                    fontColor: Color(0xff002f98),
                  ),
                ),
                Expanded(
                  child: Storypoint(
                    pointNumber: 03,
                    status: "قيد التوصيل للزبون",
                    date: "21:40:07  2024-10-5",
                    fontColor: Color(0xff002f98),
                  ),
                ),
                Expanded(
                  child: Storypoint(
                    pointNumber: 04,
                    status: "تم التسليم  للزبون",
                    date: "22:40:07  2024-10-5",
                    isActive: true,
                    fontColor: Color(0xff002f98),
                  ),
                ),
              ],
            ),
          )),
      const Spacer()
    ]);
  }
}
