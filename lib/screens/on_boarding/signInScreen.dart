import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tilt/flutter_tilt.dart';
import 'package:rive_app/screens/mainScreen.dart';
import 'package:rive_app/widgets/backButton.dart';
import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyField.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultStack(children: [
      const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [backButton()],
      ),
      const SizedBox(
        width: double.infinity,
        child: Text(
          'تسجيل \nالدخول',
          style: TextStyle(
              fontFamily: 'lamasans',
              fontSize: 54,
              fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(
        height: 32,
      ),
      SvgPicture.asset('assets/svg/Sign_in_logo.svg'),
      const SizedBox(
        height: 16,
      ),
      const Tilt(
        child: Glassyfield(text: 'رقم الهاتف'),
      ),
      const SizedBox(
        height: 16,
      ),
      const Tilt(
        child: Glassyfield(
          text: 'كلمة المرور',
        ),
      ),
      const SizedBox(
        height: 32,
      ),
      Tilt(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainScreen()),
            );
          },
          child: const Glassyfield(
            alignment: Alignment.center,
            width: 184,
            height: 64,
            borderColor: Color.fromARGB(255, 0, 47, 152),
            text: "تسجيل الدخول",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'lamasans',
                fontSize: 20),
          ),
        ),
      )
    ]);
  }
}
