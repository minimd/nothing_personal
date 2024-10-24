import "package:flutter_tilt/flutter_tilt.dart";
import 'package:flutter/material.dart';
import 'package:rive_app/screens/on_boarding/chooseSignInScreen.dart';
import 'package:rive_app/widgets/defaultStack.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultStack(
      children: [
        const SizedBox(
          width: double.infinity,
          child: Text(
            'هلا بيك  بالوسيط',
            style: TextStyle(
                fontFamily: 'lamasans',
                fontSize: 54,
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'سجل دخول او سوي حساب او تفضل كضيف. بكيفك',
          style: TextStyle(
              fontFamily: 'lamasans',
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 16,
        ),
        const Spacer(),
        GestureDetector(
          child: Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: Tilt(
              childLayout: ChildLayout(
                behind: [
                  TiltParallax(
                    size: const Offset(-12, -8),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      width: 236,
                      height: 64,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center, //to center horizontally
                        children: [
                          const Text('يلا',
                              style: TextStyle(
                                  fontFamily: 'lamasans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600)),
                          const SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.adaptive.arrow_forward),
                        ],
                      ),
                    ),
                  ),
                ],
                outer: [
                  TiltParallax(
                    size: const Offset(12, 8),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      width: 236,
                      height: 64,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center, //to center horizontally
                        children: [
                          const Text('يلا',
                              style: TextStyle(
                                  fontFamily: 'lamasans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600)),
                          const SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.adaptive.arrow_forward),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                width: 236,
                height: 64,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, //to center horizontally
                  children: [
                    const Text('يلا',
                        style: TextStyle(
                            fontFamily: 'lamasans',
                            fontSize: 20,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.adaptive.arrow_forward),
                  ],
                ),
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const chooseSignScreen()),
            );
          },
        ),
        SizedBox(
          height: 100,
        )
      ],
    );
  }
}
