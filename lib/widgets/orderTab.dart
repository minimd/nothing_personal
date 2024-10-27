import 'package:flutter/material.dart';
import 'package:rive_app/widgets/glassyField.dart';

class Ordertab extends StatelessWidget {
  const Ordertab(
      {required this.orderNumber,
      this.orderError = false,
      required this.recieverName,
      required this.recieverNumber,
      required this.recieverCity,
      required this.recieverAddress,
      required this.orderStatus,
      required this.orderDate,
      this.onTap,
      super.key});

  final String orderNumber;
  final bool orderError;
  final String recieverName;
  final String recieverNumber;
  final String recieverCity;
  final String recieverAddress;
  final String orderStatus;
  final String orderDate;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap??(){},
      child: Container(
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.white,
          border: Border.all(
              color:
                  orderError ? Color.fromARGB(255, 250, 11, 15) : Colors.black),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 12, 8),
          child: Row(
              textDirection: TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(children: [
                  orderError != true
                      ? Image.asset('assets/svg/boxEmpty.png', width: 50)
                      : Image.asset('assets/svg/boxEmptyError.png', width: 50),
                  Positioned(
                    bottom: 7,
                    left: 12,
                    child: TextLama(
                      text: '#$orderNumber',
                      fontWeight: FontWeight.bold,
                      color: orderError ? Colors.white : Colors.black,
                    ),
                  )
                ]),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            TextLama(
                              text: recieverName,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            TextLama(
                              text: recieverNumber,
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 166, 166, 166),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            TextLama(
                              text: recieverCity,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 47, 152, 1),
                            ),
                            const TextLama(
                              text: ', ',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0, 47, 152, 1),
                            ),
                            TextLama(
                              text: recieverAddress,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 47, 152, 1),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: orderError
                                    ? const Color.fromARGB(10, 246, 0, 4)
                                    : const Color.fromARGB(25, 0, 246, 82),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: TextLama(
                                  text: orderStatus,
                                  color: orderError
                                      ? const Color(0xffAE0F11)
                                      : const Color(0xff0fae31),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            TextLama(
                              text: orderDate,
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 166, 166, 166),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
