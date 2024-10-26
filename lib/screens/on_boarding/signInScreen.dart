import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tilt/flutter_tilt.dart';
import 'package:rive_app/screens/mainScreen.dart';
import 'package:rive_app/widgets/backButton.dart';
import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
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
      const Glassyfield(text: 'رقم الهاتف'),
      const SizedBox(
        height: 16,
      ),
      const Glassyfield(
        text: 'كلمة المرور',
      ),
      const SizedBox(
        height: 32,
      ),
      Tilt(
        child: glassyContainer(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MainScreen()));
          },
          alignment: Alignment.center,
          width: 184,
          borderRadius: 12,
          height: 64,
          borderColor: const Color.fromARGB(255, 0, 47, 152),
          stroke: 2,
          child: const TextLama(
            fontWeight: FontWeight.normal,
            text: 'تسجيل الدخول',
            color: Colors.black,
          ),
        ),
      )
    ]);
  }
}
