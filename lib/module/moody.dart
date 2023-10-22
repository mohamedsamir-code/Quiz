import 'package:flutter/material.dart';

class Moody extends StatelessWidget {
  const Moody({super.key});

  static const String routeName = 'Moody';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image(
                image: AssetImage(
                  'assets/leaves.png',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Moody',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 160,
              ),
              Stack(children: [
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
              ]),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              Text(
                'Hello,',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                ' Sara Rose',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              )
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'How are you feeling today ?',
            style: TextStyle(fontSize: 15.0),
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/love.png',
                  ),
                  Text(
                    'Love',
                  ),
                ],
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                children: [
                  Image.asset('assets/cool.png'),
                  Text(
                    'Cool',
                  ),
                ],
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                children: [
                  Image.asset('assets/happy.png'),
                  Text(
                    'Happy',
                  ),
                ],
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                children: [
                  Image.asset('assets/sad.png'),
                  Text(
                    'Sad',
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            children: [
              Text(
                'Feature',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              SizedBox(
                width: 150.0,
              ),
              Text(
                'See more',
                style: TextStyle(color: Colors.green),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.green,
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 150.0,
            width: 300.0,
            color: Color(0xffecfdf3),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Positive vibes',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Boost your mood with',
                          style: TextStyle(fontWeight: FontWeight.w300)),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Positive vibes',
                          style: TextStyle(fontWeight: FontWeight.w300)),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 20,
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '10 mins',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Image.asset('assets/person.png')
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 4,
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                radius: 4,
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                radius: 4,
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              Text(
                'Exercise',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              SizedBox(
                width: 140.0,
              ),
              Text(
                'See more',
                style: TextStyle(color: Colors.green),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.green,
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 100,
                    color: Color(0xfff9f5ff),
                    child: Row(
                      children: [
                        Image.asset('assets/relaxation.png'),
                        Text('Relaxation'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    color: Color(0xfffffaf5),
                    child: Row(
                      children: [
                        Image.asset('assets/breathing.png'),
                        Text('Breathing'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 30,
                    width: 100,
                    color: Color(0xfffdf2fa),
                    child: Row(
                      children: [
                        Image.asset('assets/meditation.png'),
                        Text('Meditation'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    color: Color(0xfff0f9ff),
                    child: Row(
                      children: [
                        Image.asset('assets/yoga.png'),
                        Text('Yoga'),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
