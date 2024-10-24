import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_app/screens/on_boarding/onBoarding.dart';

void main() async {
  await RiveFile.initialize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const OnBoardingView());
  }
}
