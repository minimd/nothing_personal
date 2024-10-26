import 'package:flutter/material.dart';
import 'package:rive_app/widgets/backButton.dart';
import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';
import 'package:rive_app/widgets/orderTab.dart';
import 'package:rive_app/widgets/storyPoint.dart';

class Ordersscreen extends StatelessWidget {
  const Ordersscreen({super.key});

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
          text: 'الطلبات',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 24,
        ),
        Hero(
          tag: 'label',
          child: glassyContainer(
              height: 600,
              width: double.infinity,
              borderRadius: 40,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
                child: Column(
                  children: [
                    const Ordertab(
                        orderNumber: "3",
                        recieverName: "بهاء",
                        recieverNumber: "07735761277",
                        recieverCity: "بغداد",
                        recieverAddress: "شارع فلسطين",
                        orderStatus: "في عهدة المندوب",
                        orderDate: "19:26:07 2024-10-5"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Ordertab(
                      orderNumber: "5",
                      recieverName: "احمد الزبيدي",
                      recieverNumber: "07702234123",
                      recieverCity: "الحلة",
                      recieverAddress: "شارع المدينة",
                      orderStatus: 'مشكلة',
                      orderDate: "19:26:07 2024-10-5",
                      orderError: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: const Color(0xff002F98),
                          ),
                          color: const Color(0xff002F98)),
                      child: const Column(
                        children: [
                          Ordertab(
                              orderNumber: "6",
                              recieverName: "مرتضى",
                              recieverNumber: "07735761277",
                              recieverCity: "اربيل",
                              recieverAddress: "شارع 60",
                              orderStatus: "تم التسليم للزبون",
                              orderDate: "19:26:07 2024-10-5"),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Storypoint(
                                  pointNumber: 01,
                                  status: "تم تفعيل البريد\n بنجاح",
                                  date: "19:30:07 \n 2024-10-5",
                                ),
                                Storypoint(
                                  pointNumber: 02,
                                  status: "في المخزن\n",
                                  date: "19:35:07 \n 2024-10-5",
                                ),
                                Storypoint(
                                  pointNumber: 03,
                                  status: "قيد التوصيل للزبون",
                                  date: "21:40:07 \n 2024-10-5",
                                ),
                                Storypoint(
                                  pointNumber: 04,
                                  status: "تم التسليم \n للزبون",
                                  date: "22:40:07 \n 2024-10-5",
                                  isActive: true,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
        )
      ],
    );
  }
}
