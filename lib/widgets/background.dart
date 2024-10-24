import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class Background extends StatefulWidget {
  const Background({Key? key}) : super(key: key);

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  RiveFile? backGround; // You can maintain this reference to have a cached version

  @override
  void initState() {
    super.initState();
  
    preload();
  }

  Future<void> preload() async {
    rootBundle.load('assets/rive/bg.riv').then(
      (data) async {
        // Load the RiveFile from the binary data.
        setState(() {
          backGround = RiveFile.import(data);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return backGround == null
        ? const SizedBox.shrink()
        : RiveAnimation.direct(backGround!);
  }
}