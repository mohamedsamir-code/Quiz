import 'package:flutter/material.dart';

class UpperTabbar extends StatelessWidget {
  const UpperTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      width: 300,
      height: 200,
      image: AssetImage(
        'assets/morning-yoga.png',
      ),
    );
  }
}
