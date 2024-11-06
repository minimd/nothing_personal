import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive_app/screens/MainScreen.dart';
import 'package:rive_app/widgets/backButton.dart';
import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

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
          'إنشاء \nحساب',
          style: TextStyle(
              fontFamily: 'lamasans',
              fontSize: 54,
              fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(
        height: 32,
      ),
      SvgPicture.asset('assets/svg/Sign_up_logo.svg'),
      const SizedBox(
        height: 16,
      ),
      ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 270),
        child: glassyContainer(
          width: double.infinity,
          borderRadius: 12,
          blur: 7,
          fillColor: Colors.transparent,
          height: MediaQuery.of(context).size.height * 0.4,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Glassyfield(
                    height: 48,
                    blur: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextLama(text: "الاسم الثلاثي"),
                        SvgPicture.asset(
                          'assets/svg/User.svg',
                          height: 40,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Glassyfield(
                    height: 48,
                    blur: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextLama(text: "كلمة السر"),
                        SvgPicture.asset(
                          'assets/svg/Lock.svg',
                          height: 40,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Glassyfield(
                    height: 48,
                    blur: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextLama(text: "رقم الهاتف"),
                        SvgPicture.asset(
                          'assets/svg/Call_Circle.svg',
                          height: 40,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Glassyfield(
                    height: 48,
                    blur: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextLama(text: "المدينة"),
                        SvgPicture.asset(
                          'assets/svg/Circle_Right.svg',
                          height: 40,
                          color: Color(0xff002f98),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Glassyfield(
                    height: 48,
                    blur: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextLama(text: "المنطقة"),
                        SvgPicture.asset(
                          'assets/svg/Circle_Right.svg',
                          height: 40,
                          color: Color(0xff002f98),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Glassyfield(
                    height: 48,
                    blur: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextLama(text: "اقرب نقطة دالة"),
                        SvgPicture.asset(
                          'assets/svg/map-pin.svg',
                          height: 40,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Glassyfield(
                    height: 48,
                    blur: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextLama(text: "تاريخ الميلاد"),
                        SvgPicture.asset(
                          'assets/svg/Circle_Right.svg',
                          height: 40,
                          color: Color(0xff002f98),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextLama(text: 'الصورة الشخصية'),
                    ],
                  ),
                  Glassyfield(
                    blur: 0,
                    text: "",
                    height: 128,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/svg/Circle_Add.svg',
                      height: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextLama(
                        text: "الهوية او البطاقة الموحدة - وجه",
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ],
                  ),
                  Glassyfield(
                    blur: 0,
                    text: "",
                    height: 128,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/svg/Circle_Add.svg',
                      height: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextLama(
                        text: "الهوية او البطاقة الموحدة - ظهر",
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ],
                  ),
                  Glassyfield(
                    blur: 0,
                    text: "",
                    height: 128,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/svg/Circle_Add.svg',
                      height: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextLama(
                        text: "بطاقة السكن - وجه",
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ],
                  ),
                  Glassyfield(
                    blur: 0,
                    text: "",
                    height: 128,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/svg/Circle_Add.svg',
                      height: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextLama(
                        text: "بطاقة السكن - ظهر",
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ],
                  ),
                  Glassyfield(
                    blur: 0,
                    text: "",
                    height: 128,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/svg/Circle_Add.svg',
                      height: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MainScreen()),
          );
        },
        child: const Glassyfield(
          blur: 7,
          alignment: Alignment.center,
          width: 184,
          height: 48,
          borderColor: Color.fromARGB(255, 0, 47, 152),
          text: "إنشاء حساب",
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      SizedBox(
        height: 24,
      )
    ]);
  }
}
