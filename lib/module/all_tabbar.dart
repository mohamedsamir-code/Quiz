import 'package:flutter/material.dart';

class AllTabbar extends StatelessWidget {
  const AllTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Image(
            image: AssetImage(
              'assets/morning-yoga.png',
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Image(
            image: AssetImage(
              'assets/plank-exercise.png',
            ),
          ),
        ],
      ),
    );
  }
}
