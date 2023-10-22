import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

enum Filter { Discover, News, Most_Viewed, Saved }

class News extends StatefulWidget {
  const News({super.key});

  static const String routeName = 'News';

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  Set<Filter> filters = <Filter>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset('assets/alice-care.png'),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintText: 'Articles, Video, Audio and More,...',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Wrap(
                      spacing: 5.0,
                      children: Filter.values.map((Filter exercise) {
                        return FilterChip(
                          label: Text(exercise.name),
                          selected: filters.contains(exercise),
                          onSelected: (bool selected) {
                            setState(() {
                              if (selected) {
                                filters.add(exercise);
                              } else {
                                filters.remove(exercise);
                              }
                            });
                          },
                        );
                      }).toList(),
                    ),

                    //   CarouselSlider(
                    //     items: [
                    //       Container(
                    //         margin: EdgeInsets.all(8.0),
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(10.0),
                    //           image: DecorationImage(
                    //             image: AssetImage('assets/self-care.png'),
                    //             fit: BoxFit.cover,
                    //           ),
                    //         ),
                    //       ),
                    //       Container(
                    //         margin: EdgeInsets.all(8.0),
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(10.0),
                    //           image: DecorationImage(
                    //             image: AssetImage('assets/cycle.png'),
                    //             fit: BoxFit.cover,
                    //           ),
                    //         ),
                    //       ),
                    //
                    //     ],
                    //     options: CarouselOptions(
                    //       height: 380.0,
                    //       enlargeCenterPage: true,
                    //       autoPlay: true,
                    //       aspectRatio: 16 / 9,
                    //       autoPlayCurve: Curves.fastOutSlowIn,
                    //       enableInfiniteScroll: true,
                    //       autoPlayAnimationDuration: Duration(milliseconds: 800),
                    //       viewportFraction: 0.8,
                    //     ),
                    //   ),
                    // ]),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hot topics',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                SizedBox(
                  width: 140.0,
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.blue),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.blue,
                ),
              ],
            ),
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/self-care.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage('assets/cycle.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text(
                'Get Tips',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/doctor.png',
              width: 300,
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cycle Phases and Period',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                SizedBox(
                  width: 70.0,
                ),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.blue),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
