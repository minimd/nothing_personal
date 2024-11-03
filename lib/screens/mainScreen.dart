import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive_app/screens/fu.dart';
import 'package:rive_app/screens/ordersScreen.dart';
import 'package:rive_app/screens/searchScreenEmpty.dart';
import 'package:rive_app/widgets/background.dart';

import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';
import 'package:rive_app/widgets/ordersType.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  bool _isNavBarVisible = false; // Tracks if navbar is visible
  late AnimationController _controller; // Animation controller for the slide
  late Animation<double> _animation; // Animation to control the height

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleNavBar() {
    setState(() {
      _isNavBarVisible = !_isNavBarVisible;
      if (_isNavBarVisible) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const Background(),
        Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 35, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Hero(
                        tag: 'header',
                        transitionOnUserGestures: true,
                        child: glassyContainer(
                          onTap: () {},
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
                              GestureDetector(
                                child: SvgPicture.asset(
                                    'assets/svg/hamburger.svg'),
                                onTap: () {
                                  _toggleNavBar();
                                },
                              ),
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
                                      builder: (context) =>
                                          const Searchscreenempty()));
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
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: SizeTransition(
            sizeFactor: _animation,
            axisAlignment: -1.0,
            child: GestureDetector(
              onTap: () {
                _toggleNavBar();
              },
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: const Color.fromARGB(132, 19, 81, 133),
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffD0233F), width: 2),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35),
                        ),
                        color: Colors.white),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 45,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(
                              width: 58,
                            ),
                            SvgPicture.asset(
                              'assets/svg/logo_settled.svg',
                              width: 90,
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 58,
                                  height: 58,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: const Color(0xff002F98))),
                                  child: SvgPicture.asset(
                                      'assets/svg/Call_Ringing.svg'),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const TextLama(
                                  text: "اتصل بنا",
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 58,
                                    height: 58,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: const Color(0xff002F98))),
                                    child: Image.asset('assets/svg/messi.png'),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const TextLama(
                                    text: "علي جواد",
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 58,
                                    height: 58,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: const Color(0xff002F98))),
                                    child: SvgPicture.asset(
                                        'assets/svg/Notes.svg'),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const TextLama(
                                    text: "الحسابات",
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 58,
                                      height: 58,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                              color: const Color(0xff002F98))),
                                      child: SvgPicture.asset(
                                          'assets/svg/pin.svg'),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const TextLama(
                                    text: "فروع الشركة",
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 58,
                                    height: 58,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: const Color(0xff002F98))),
                                    child: SvgPicture.asset(
                                        'assets/svg/Sign-out.svg'),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const TextLama(
                                    text: "تسجيل الخروج",
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ],
    ));
  }
}
