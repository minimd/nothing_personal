import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive_app/widgets/backButton.dart';
import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';

class Financialrecordsscreen extends StatelessWidget {
  const Financialrecordsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultStack(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          glassyContainer(
              height: 54, child: SvgPicture.asset('assets/svg/Qr.svg')),
          glassyContainer(
            height: 54,
            width: 170,
            child: Image.asset(
              'assets/svg/logo.png',
              width: MediaQuery.sizeOf(context).width * 0.3,
            ),
          ),
          const backButton(),
        ],
      ),
      const SizedBox(
        height: 32,
      ),
      const TextLama(
        text: 'سجل الحسابات',
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      const SizedBox(
        height: 24,
      ),
      glassyContainer(
        height: MediaQuery.of(context).size.height - 240,
        width: double.infinity,
        borderRadius: 40,
        // alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff002F98),
                    ),
                    borderRadius: BorderRadius.circular(13)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const TextLama(
                                text: '#2',
                                color: Color(0xff002f98),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                              SvgPicture.asset('assets/svg/Dairy.svg'),
                            ],
                          ),
                          const TextLama(
                            text: 'تم استلام الفاتورة',
                            color: Color(0xff002f98),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLama(
                            text: 'تاريخ إستلام الفاتورة',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLama(
                            text: '2024-08-13 19:40:10',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 146, 146, 146),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xffababab),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLama(
                            text: 'نوع التحاسب',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLama(
                            text: 'في الشركة',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 146, 146, 146),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xffababab),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLama(
                            text: 'المبلغ المستلم',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLama(
                            text: '50,000 IQD',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 146, 146, 146),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xffababab),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLama(
                            text: 'عدد الطلبات المكتملة',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLama(
                            text: '5',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 146, 146, 146),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xffababab),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLama(
                            text: 'مبلغ الشركة',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLama(
                            text: '10,000 IQD',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 146, 146, 146),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xffababab),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLama(
                            text: 'مبلغ الفروقات ',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLama(
                            text: '25,000 IQD',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 146, 146, 146),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xffababab),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLama(
                            text: 'المبلغ الكلي',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLama(
                            text: '70,000 IQD',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 146, 146, 146),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xffababab),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      glassyContainer(
                          height: 34,
                          width: 152,
                          borderRadius: 8,
                          borderColor: Color(0xff002F98),
                          child: TextLama(
                            text: 'طلبات الفاتورة',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 8,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff002F98),
                    ),
                    borderRadius: BorderRadius.circular(13)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const TextLama(
                                text: '#2',
                                color: Color(0xff002f98),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                              SvgPicture.asset('assets/svg/Dairy.svg'),
                            ],
                          ),
                          const TextLama(
                            text: 'تم استلام الفاتورة',
                            color: Color(0xff002f98),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLama(
                            text: 'تاريخ إستلام الفاتورة',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLama(
                            text: '2024-08-13 19:40:10',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 146, 146, 146),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xffababab),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLama(
                            text: 'نوع التحاسب',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLama(
                            text: 'في الشركة',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 146, 146, 146),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xffababab),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLama(
                            text: 'المبلغ المستلم',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLama(
                            text: '50,000 IQD',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 146, 146, 146),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xffababab),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLama(
                            text: 'عدد الطلبات المكتملة',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLama(
                            text: '5',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 146, 146, 146),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xffababab),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLama(
                            text: 'مبلغ الشركة',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLama(
                            text: '10,000 IQD',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 146, 146, 146),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xffababab),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLama(
                            text: 'مبلغ الفروقات ',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLama(
                            text: '25,000 IQD',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 146, 146, 146),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xffababab),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextLama(
                            text: 'المبلغ الكلي',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLama(
                            text: '70,000 IQD',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 146, 146, 146),
                          ),
                        ],
                      ),
                      Divider(
                        color: Color(0xffababab),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      glassyContainer(
                          height: 34,
                          width: 152,
                          borderRadius: 8,
                          borderColor: Color(0xff002F98),
                          child: TextLama(
                            text: 'طلبات الفاتورة',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 8,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
