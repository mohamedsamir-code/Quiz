import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/module/moody.dart';
import 'package:quiz/module/news.dart';
import 'package:quiz/module/workout.dart';
import 'package:quiz/shared/provider.dart';

class Home extends StatefulWidget {
  Home({super.key});

  static const String routeName = 'Home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.index,
        iconSize: 20,
        onTap: (value) {
          provider.bottomNavCurrent(value);
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Moody'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/category-icon.png',
                ),
              ),
              label: 'Workout'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: 'News'),
        ],
      ),
      body: screens[provider.index],
    );
  }

  List<Widget> screens = [Moody(), Workout(), News()];
}
