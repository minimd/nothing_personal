import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive_app/screens/navbar/changePassword.dart';
import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';

class Accountscreen extends StatelessWidget {
  const Accountscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultStack(children: [
      glassyContainer(
          height: MediaQuery.of(context).size.height - 100,
          width: MediaQuery.of(context).size.width,
          borderRadius: 35,
          borderColor: const Color(0xffD0233F),
          fillColor: Colors.white,
          stroke: 2,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svg/logo_settled.svg',
                  height: 60,
                ),
                const SizedBox(
                  height: 45,
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: const Color(0xff002F98),
                        ),
                      ),
                      child: Image.asset(
                        'assets/svg/messi.png',
                        height: 95,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: glassyContainer(
                        height: 34,
                        child: Center(
                          child: SvgPicture.asset('assets/svg/Pencil.svg'),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const TextLama(
                  text: 'علي جواد',
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 14,
                ),
                const TextLama(
                  text: '07708202486',
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 16,
                ),
                Divider(
                  color: const Color(0xffB1AEAE),
                  indent: MediaQuery.of(context).size.width * 0.1,
                  endIndent: MediaQuery.of(context).size.width * 0.1,
                ),
                const SizedBox(
                  height: 18,
                ),
                glassyContainer(
                    height: 54,
                    width: 160,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ChangePasswordScreen()));
                    },
                    child: const TextLama(
                      text: 'تغيير كلمة المرور',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff002F98),
                    )),
                const SizedBox(
                  height: 14,
                ),
                const glassyContainer(
                    height: 54,
                    width: 160,
                    child: TextLama(
                      text: 'حذف الحساب',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffD0233F),
                    )),
                const Spacer(),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 58,
                      height: 58,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: const Color(0xff002F98))),
                      child: SvgPicture.asset('assets/svg/Sign-out.svg'),
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
              ],
            ),
          ))
    ]);
  }
}
