import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_tilt/flutter_tilt.dart';
import 'package:rive_app/screens/mainScreen.dart';
import 'package:rive_app/screens/on_boarding/signInScreen.dart';
import 'package:rive_app/screens/on_boarding/signUpScreen.dart';
import 'package:rive_app/widgets/backButton.dart';
import 'package:rive_app/widgets/defaultStack.dart';

class chooseSignScreen extends StatefulWidget {
  const chooseSignScreen({super.key});

  @override
  State<chooseSignScreen> createState() => _chooseSignScreenState();
}

// ignore: camel_case_types
class _chooseSignScreenState extends State<chooseSignScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultStack(children: [
      
      const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          backButton(),
        ],
      ),
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
            fontFamily: 'lamasans', fontSize: 20, fontWeight: FontWeight.w500),
      ),
      const Spacer(),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 274,
            height: 220,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInScreen()),
                        );
                      },
                      child: Tilt(
                        child: Container(
                          width: 176,
                          height: 64,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Text(
                            'تسجيل دخول',
                            style: TextStyle(
                                fontFamily: 'lamasans',
                                fontSize: 20,
                                color: Color.fromARGB(255, 208, 35, 63),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signupscreen()),
                        );
                      },
                      child: Tilt(
                        child: Container(
                          width: 176,
                          height: 64,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Text(
                            'إنشاء حساب',
                            style: TextStyle(
                                fontFamily: 'lamasans',
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 47, 152),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainScreen()),
                        );
                      },
                      child: Tilt(
                        child: Container(
                          width: 176,
                          height: 64,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Text(
                            'دخول كضيف',
                            style: TextStyle(
                                fontFamily: 'lamasans',
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 40,
      )
    ]);
  }
}
