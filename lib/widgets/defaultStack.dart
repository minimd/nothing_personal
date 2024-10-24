import 'package:flutter/material.dart';
import 'package:rive_app/widgets/background.dart';

class DefaultStack extends StatelessWidget {
  const DefaultStack({
    required this.children,
    super.key,
  });
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            const Background(),
            Directionality(
              textDirection: TextDirection.rtl,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 35, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: children,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
