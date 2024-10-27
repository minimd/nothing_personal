import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive_app/screens/singleOrderScreen.dart';
import 'package:rive_app/screens/singleOrderScreenError.dart';
import 'package:rive_app/widgets/backButton.dart';
import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';
import 'package:rive_app/widgets/orderTab.dart';
import 'package:rive_app/widgets/storyPoint.dart';

class Searchscreenfilled extends StatelessWidget {
  const Searchscreenfilled({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultStack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            glassyContainer(
                height: 54,
                width: 230,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/searchList.svg',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      TextLama(
                        text: '0770355448',
                        color: Color(0xff002F98),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SvgPicture.asset(
                          'assets/svg/cancel.svg',
                        ),
                      )
                    ],
                  ),
                )),
            const Hero(tag: 'back', child: backButton())
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        const TextLama(
          text: 'البحث',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 24,
        ),
        Hero(
          tag: 'label',
          child: glassyContainer(
              height: MediaQuery.of(context).size.height - 240,
              width: double.infinity,
              borderRadius: 40,
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
                  child: Column(
                    children: [
                      Ordertab(
                        orderNumber: "3",
                        recieverName: "بهاء",
                        recieverNumber: "07735761277",
                        recieverCity: "بغداد",
                        recieverAddress: "شارع فلسطين",
                        orderStatus: "في عهدة المندوب",
                        orderDate: "19:26:07 2024-10-5",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Singleorderscreen()));
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Ordertab(
                        orderNumber: "3",
                        recieverName: "بهاء",
                        recieverNumber: "07735761277",
                        recieverCity: "بغداد",
                        recieverAddress: "شارع فلسطين",
                        orderStatus: "في عهدة المندوب",
                        orderDate: "19:26:07 2024-10-5",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Singleorderscreen()));
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Ordertab(
                        orderNumber: "3",
                        recieverName: "بهاء",
                        recieverNumber: "07735761277",
                        recieverCity: "بغداد",
                        recieverAddress: "شارع فلسطين",
                        orderStatus: "في عهدة المندوب",
                        orderDate: "19:26:07 2024-10-5",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Singleorderscreen()));
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Ordertab(
                        orderNumber: "3",
                        recieverName: "بهاء",
                        recieverNumber: "07735761277",
                        recieverCity: "بغداد",
                        recieverAddress: "شارع فلسطين",
                        orderStatus: "في عهدة المندوب",
                        orderDate: "19:26:07 2024-10-5",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Singleorderscreen()));
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Ordertab(
                        orderNumber: "3",
                        recieverName: "بهاء",
                        recieverNumber: "07735761277",
                        recieverCity: "بغداد",
                        recieverAddress: "شارع فلسطين",
                        orderStatus: "في عهدة المندوب",
                        orderDate: "19:26:07 2024-10-5",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Singleorderscreen()));
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Ordertab(
                        orderNumber: "5",
                        recieverName: "احمد الزبيدي",
                        recieverNumber: "07702234123",
                        recieverCity: "الحلة",
                        recieverAddress: "شارع المدينة",
                        orderStatus: 'مشكلة',
                        orderDate: "19:26:07 2024-10-5",
                        orderError: true,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Singleorderscreenerror()));
                        },
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Storypoint(
                                    pointNumber: 01,
                                    status: "تم تفعيل البريد بنجاح",
                                    date: "19:30:07  2024-10-5",
                                  ),
                                  Storypoint(
                                    pointNumber: 02,
                                    status: "في المخزن",
                                    date: "19:35:07  2024-10-5",
                                  ),
                                  Storypoint(
                                    pointNumber: 03,
                                    status: "قيد التوصيل للزبون",
                                    date: "21:40:07  2024-10-5",
                                  ),
                                  Storypoint(
                                    pointNumber: 04,
                                    status: "تم التسليم  للزبون",
                                    date: "22:40:07  2024-10-5",
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
                ),
              )),
        )
      ],
    );
  }
}
