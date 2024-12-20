import 'package:flutter/material.dart';
import 'package:rive_app/widgets/glassyField.dart';

class Storypoint extends StatelessWidget {
  const Storypoint(
      {required this.pointNumber,
      required this.status,
      required this.date,
      this.isActive = false,
      this.isError = false,
      this.fontColor = Colors.white,
      super.key});

  final int pointNumber;
  final String status;
  final String date;
  final bool isActive;
  final bool isError;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: isActive
                  ? Border.all(
                      color: const Color.fromARGB(255, 35, 208, 41), width: 2)
                  : Border.all(color: Colors.transparent),
              color: isError ? const Color(0xffD0233F) : Colors.white,
            ),
            child: Center(
              child: TextLama(
                text: pointNumber.toString(),
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextLama(
              text: status,
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: fontColor,
            ),
            TextLama(
              text: date,
              color: fontColor,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        )
      ]),
    );
  }
}
