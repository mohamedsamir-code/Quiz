import 'package:flutter/material.dart';
import 'package:quiz/module/all_tabbar.dart';
import 'package:quiz/module/full_body_tabbar.dart';
import 'package:quiz/module/lower_tabbar.dart';
import 'package:quiz/module/upper_tabbar.dart';

class Workout extends StatefulWidget {
  const Workout({super.key});

  static const String routeName = 'Workout';

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(
      icon: Text(
        'All Type',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      icon: Text(
        'Full Body',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      icon: Text(
        'Upper',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      icon: Text(
        'Lower',
        style: TextStyle(color: Colors.black),
      ),
    ),
  ];
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: myTabs.length, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage(
                    'assets/profile.png',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Jade',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Ready to workout?',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: 90,
                ),
                Stack(
                  children: [
                    Icon(
                      Icons.notifications_none,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 3,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 300,
              color: Colors.blueGrey.shade300,
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ImageIcon(
                            AssetImage('assets/heart.png'),
                            size: 30,
                          ),
                          Text('Heart Rate'),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '81 ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('BPM'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  VerticalDivider(
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.list,
                            size: 30,
                          ),
                          Text('To-do'),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '32,5',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('%'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  VerticalDivider(
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          ImageIcon(
                            AssetImage('assets/calory.png'),
                            size: 30,
                          ),
                          Text('Calo'),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '1000',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Cal'),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Workout Programs',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DefaultTabController(
              length: 4,
              child: TabBar(
                controller: controller,
                tabs: myTabs,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 328.500,
              child: TabBarView(
                controller: controller,
                children: [
                  AllTabbar(),
                  FullBodyTabbar(),
                  UpperTabbar(),
                  LowerTabbar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
