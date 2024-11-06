import 'package:flutter/material.dart';
import 'package:flutter_tilt/flutter_tilt.dart';
import 'package:rive_app/screens/newOrderScreen.dart';
import 'package:rive_app/widgets/glassyContainer.dart';
import 'package:rive_app/widgets/glassyField.dart';

class OrdersType extends StatelessWidget {
  const OrdersType({
    this.imageUrl,
    required this.count,
    required this.type,
    this.fontWieght,
    this.fontColor,
    this.onTap,
    super.key,
  });
  final String? imageUrl;
  final int? count;
  final String? type;
  final FontWeight? fontWieght;
  final Color? fontColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          glassyContainer(
            height: 66,
            borderRadius: 2.5,
            onTap: onTap ?? () {},
            child: Tilt(
              tiltConfig: const TiltConfig(
                angle: 5,
              ),
              childLayout: count! == 2
                  ? ChildLayout(outer: [
                      TiltParallax(
                        size: const Offset(3, 3),
                        child: Stack(children: [
                          Image.asset(
                            imageUrl ?? 'assets/svg/box.png',
                            height: 44,
                          ),
                          Positioned(
                            bottom: -3,
                            left: 2.2,
                            child: TextLama(
                              text: '$count',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ]),
                      ),
                    ])
                  : count! > 2
                      ? ChildLayout(outer: [
                          TiltParallax(
                            size: const Offset(3, 3),
                            child: Stack(children: [
                              Image.asset(
                                imageUrl ?? 'assets/svg/box.png',
                                height: 44,
                              ),
                              Positioned(
                                bottom: -3,
                                left: 2.2,
                                child: TextLama(
                                  text: '$count',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            ]),
                          ),
                        ], behind: [
                          TiltParallax(
                            size: const Offset(-3, -3),
                            child: Stack(children: [
                              Image.asset(
                                imageUrl ?? 'assets/svg/box.png',
                                height: 44,
                              ),
                              Positioned(
                                bottom: -3,
                                left: 2.2,
                                child: TextLama(
                                  text: '$count',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              )
                            ]),
                          ),
                        ])
                      : const ChildLayout(),
              child: Stack(children: [
                Image.asset(
                  imageUrl ?? 'assets/svg/box.png',
                  height: 44,
                ),
                Positioned(
                    bottom: -3,
                    left: 2.2,
                    child: TextLama(
                      text: '$count',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ))
              ]),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextLama(
            text: type,
            color: fontColor ?? const Color.fromRGBO(0, 47, 152, 1),
            fontSize: 12,
            fontWeight: fontWieght ?? FontWeight.w500,
          )
        ],
      ),
    );
  }
}

class OrderstypeNew extends StatelessWidget {
  const OrderstypeNew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          glassyContainer(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Neworderscreen()));
            },
            height: 66,
            borderRadius: 2.5,
            child: Tilt(
              tiltConfig: const TiltConfig(
                angle: 5,
              ),
              child: Image.asset(
                'assets/svg/boxAdd.png',
                filterQuality: FilterQuality.low,
                height: 44,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const TextLama(
            text: 'إنشاء طلب\n',
            color: const Color.fromRGBO(208, 35, 63, 1),
            fontSize: 12,
            fontWeight: FontWeight.w700,
          )
        ],
      ),
    );
  }
}
