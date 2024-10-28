import 'package:flutter/material.dart';
import 'package:rive_app/widgets/backButton.dart';
import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';
import 'package:rive_app/widgets/storyPoint.dart';

class Singleorderscreenerror extends StatelessWidget {
  const Singleorderscreenerror({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultStack(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: glassyContainer(
                fillColor: Color(0xffd0233f),
                height: 54,
                width: 90,
                child: TextLama(
                  text: 'مراجعة',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Hero(
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
          ),
          const Expanded(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Hero(tag: 'back', child: backButton())))
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    width: 50,
                  ),
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
                  glassyContainer(
                      height: 40,
                      blur: 0,
                      borderColor: const Color(0xff002F98),
                      child: Image.asset('assets/svg/phone.png', width: 30)),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height - 480,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white),
                child: const SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        TextLama(
                          text: 'بهاء',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        TextLama(
                          text: '07703553448',
                          color: Color(0xff002F98),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        TextLama(
                          text: '07703553448',
                          color: Color(0xff002F98),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 0,
                          endIndent: 60,
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            TextLama(
                              text: 'النوع:',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff8d8d8d),
                            ),
                            TextLama(
                              text: ' ماوس',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF002f98),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            TextLama(
                              text: 'الحجم:',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff8d8d8d),
                            ),
                            TextLama(
                              text: ' عادي',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF002f98),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            TextLama(
                              text: 'بروموكود:',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff8d8d8d),
                            ),
                            TextLama(
                              text: ' لا يوجد',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF002f98),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            TextLama(
                              text: 'ملاحظات:',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff8d8d8d),
                            ),
                            TextLama(
                              text: ' قابل للكسر',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF002f98),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 0,
                          endIndent: 60,
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            TextLama(
                              text: 'العنوان:',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff8d8d8d),
                            ),
                            TextLama(
                              text: ' بغداد - شارع فلسطين',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF002f98),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            TextLama(
                              text: 'اقرب نقطة:',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff8d8d8d),
                            ),
                            TextLama(
                              text: ' شارع الطارق',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF002f98),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            TextLama(
                              text: 'الكمية:',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff8d8d8d),
                            ),
                            TextLama(
                              text: ' 1',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFF002f98),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            TextLama(
                              text: 'السعر مع التوصيل:',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff8d8d8d),
                            ),
                            TextLama(
                              text: ' 40,000',
                              fontSize: 16,
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
            ],
          ),
        ),
      ),
      const Spacer(),
      const glassyContainer(
          height: 140,
          width: double.infinity,
          borderRadius: 14,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Storypoint(
                  pointNumber: 01,
                  status: "تم تفعيل البريد بنجاح",
                  date: "19:30:07  2024-10-5",
                  fontColor: Color(0xff002f98),
                ),
                Storypoint(
                  pointNumber: 02,
                  status: "في المخزن",
                  date: "19:35:07\n  2024-10-5",
                  fontColor: Color(0xff002f98),
                ),
                Storypoint(
                  pointNumber: 03,
                  status: "قيد التوصيل للزبون",
                  date: "21:40:07  2024-10-5",
                  fontColor: Color(0xff002f98),
                ),
                Storypoint(
                  pointNumber: 04,
                  status: "الزبون رفض الطلب",
                  date: "22:40:07  2024-10-5",
                  isError: true,
                  fontColor: Color(0xff002f98),
                ),
              ],
            ),
          )),
      const Spacer()
    ]);
  }
}
