import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive_app/screens/navbar/accountScreen.dart';
import 'package:rive_app/screens/navbar/financialRecordsScreen.dart';
import 'package:rive_app/screens/navbar/offices_locations.dart';
import 'package:rive_app/screens/newOrderScreen.dart';
import 'package:rive_app/screens/on_boarding/onBoarding.dart';
import 'package:rive_app/screens/ordersScreen.dart';
import 'package:rive_app/screens/searchScreenEmpty.dart';
import 'package:rive_app/screens/walletScreen.dart';
import 'package:rive_app/widgets/background.dart';

import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';
import 'package:rive_app/widgets/ordersType.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  bool _isNavBarVisible = false; // Tracks if navbar is visible
  late AnimationController _controller; //this is for the whole slide
  late AnimationController _stackController; //  this controls the menu itself
  late Animation<double> _animation; //this is for the whole slide
  late Animation<double> _StackAnimation; // this controls the menu itself

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1),
      vsync: this,
      reverseDuration: const Duration(milliseconds: 300),
    );
    _stackController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _StackAnimation = CurvedAnimation(
      parent: _stackController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _stackController.dispose();
    super.dispose();
  }

  void _toggleNavBar() {
    setState(() {
      _isNavBarVisible = !_isNavBarVisible;
      if (_isNavBarVisible) {
        _controller.forward();
        _stackController.forward();
      } else {
        _controller.reverse();
        _stackController.reverse();
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    textDirection: TextDirection.ltr,
                    children: [
                      const OrdersType(
                        type: 'المشاكل',
                        count: 2,
                        imageUrl: 'assets/svg/boxError.png',
                      ),
                      const OrdersType(
                        type: "الرواجع مع  المندوب",
                        count: 2,
                      ),
                      const OrdersType(
                        type: "رواجع مندوب التوصيل",
                        count: 1,
                      ),
                      const OrderstypeNew()
                    ],
                  ),
                  Image.asset('assets/svg/carouselPlaceholder.png'),
                  const Spacer(),
                  glassyContainer(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const WalletScreen()));
                    },
                    height: 72,
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          SvgPicture.asset('assets/svg/wallet.svg'),
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
        SizeTransition(
          sizeFactor: _animation,
          axisAlignment: -1.0,
          child: Stack(children: [
            GestureDetector(
              onTap: () {
                _toggleNavBar();
              },
              child: AnimatedOpacity(
                opacity: _isNavBarVisible ? 1 : 0,
                duration: const Duration(milliseconds: 200),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: const Color.fromARGB(132, 19, 81, 133),
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            SizeTransition(
              sizeFactor: _StackAnimation,
              axisAlignment: -1.0,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 380,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xffD0233F), width: 2),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35),
                      ),
                      color: Colors.white),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 55,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(
                            'assets/svg/logo_settled.svg',
                            width: 100,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Accountscreen(),
                              ));
                            },
                            child: SizedBox(
                              width: 100,
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
                          ),
                          SizedBox(
                            width: 100,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const Financialrecordsscreen(),
                                ));
                              },
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
                          ),
                          SizedBox(
                            width: 100,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const OfficesLocations()));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 58,
                                    height: 58,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: const Color(0xff002F98))),
                                    child:
                                        SvgPicture.asset('assets/svg/pin.svg'),
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
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            //using sized box so we can make each part square to the other so the row divides them equally
                            width: 100,
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
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OnBoardingView()),
                                (Route<dynamic> route) => false,
                              );
                            },
                            child: SizedBox(
                              width: 100,
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
                            ),
                          ),
                          const SizedBox(
                            width: 100,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ],
    ));
  }
}
