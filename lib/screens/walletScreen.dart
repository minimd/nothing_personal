import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive_app/screens/MainScreen.dart';
import 'package:rive_app/screens/singleOrderScreen.dart';
import 'package:rive_app/screens/singleOrderScreenError.dart';
import 'package:rive_app/widgets/backButton.dart';
import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';
import 'package:rive_app/widgets/orderTab.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultStack(
      children: [
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
          text: 'التحاسب',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 24,
        ),
        glassyContainer(
          height: MediaQuery.of(context).size.height - 340,
          width: double.infinity,
          borderRadius: 40,
          // alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextLama(
                        text: 'الطلبات المسلمة  ',
                        fontWeight: FontWeight.w500,
                      ),
                      TextLama(
                        text: '5',
                        color: Color(0xff002F98),
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ],
                  ),
                  const Divider(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextLama(
                        text: 'طلبات الاستبدال  ',
                        fontWeight: FontWeight.w500,
                      ),
                      TextLama(
                        text: '0',
                        color: Color(0xff002F98),
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const glassyContainer(
                    borderRadius: 10,
                    borderColor: Color(0xff002F98),
                    height: 50,
                    fillColor: Colors.white,
                    width: 170,
                    stroke: 2,
                    child: TextLama(
                      text: 'عرض الطلبات',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 260,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          TextLama(
                            text: 'المجموع الكلي للطلبات',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextLama(
                            text: '50,000 IQD',
                            color: Color(0xff002F98),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          TextLama(
                            text: 'المجموع الكلي للمرسل',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextLama(
                            text: '50,000 IQD',
                            color: Color(0xff002F98),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          TextLama(
                            text: 'المجموع الكلي للشركة',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextLama(
                            text: '50,000 IQD',
                            color: Color(0xff002F98),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      TextLama(
                        text: "التحاسب",
                        fontWeight: FontWeight.w500,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            glassyContainer(
                              height: 54,
                              width: MediaQuery.of(context).size.width * 0.2,
                              borderColor: Color(0xff002F98),
                              borderRadius: 10,
                              child: TextLama(
                                text: "مع المندوب",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                            glassyContainer(
                              height: 54,
                              width: MediaQuery.of(context).size.width * 0.2,
                              borderColor: Color(0xff002F98),
                              fillColor: Color(0xff002F98),
                              borderRadius: 10,
                              child: TextLama(
                                text: "في الشركة",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const glassyContainer(
                    borderRadius: 10,
                    borderColor: Color(0xff002F98),
                    height: 50,
                    fillColor: Colors.white,
                    width: 170,
                    stroke: 2,
                    child: TextLama(
                      text: 'طلب محاسبة',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  )
                ],
              ),
            ),
          ),
        ),
        const Spacer(),
        glassyContainer(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const MainScreen()),
              (Route<dynamic> route) => false,
            );
          },
          height: 72,
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                SvgPicture.asset('assets/svg/main.svg'),
              ],
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
