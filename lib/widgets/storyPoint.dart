import 'package:flutter/material.dart';
import 'package:rive_app/widgets/glassyField.dart';

class Storypoint extends StatelessWidget {
  const Storypoint(
      {required this.pointNumber,
      required this.status,
      required this.date,
      this.isActive = false,
      this.isError = false,
      super.key});

  final int pointNumber;
  final String status;
  final String date;
  final bool isActive;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(
          height: 8,
        ),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: isActive
                ? Border.all(color: const Color(0xffD0233F), width: 2)
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
        const SizedBox(
          height: 8,
        ),
        TextLama(
          text: status,
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(
          height: 6,
        ),
        TextLama(
          text: date,
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(
          height: 6,
        )
      ]),
    );
  }
}
