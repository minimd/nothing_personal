import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive_app/screens/searchScreenFilled.dart';

import 'package:rive_app/widgets/backButton.dart';
import 'package:rive_app/widgets/defaultStack.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';

class Searchscreenempty extends StatelessWidget {
  const Searchscreenempty({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultStack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            glassyContainer(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Searchscreenfilled()));
                },
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
                      const SizedBox(
                        width: 8,
                      ),
                      const TextLama(
                        text: '',
                        color: Color(0xff002F98),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      const Spacer(),
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
        glassyContainer(
            height: MediaQuery.of(context).size.height - 240,
            width: double.infinity,
            borderRadius: 40,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/svg/redEmptyBox.png',
                      width: 100,
                    ),
                    const TextLama(
                      text: 'ادخل رقم الطلب او رقم هاتف الزبون',
                      color: Color(0xff002F98),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )
                  ],
                )))
      ],
    );
  }
}
