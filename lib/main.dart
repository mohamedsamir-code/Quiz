import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/layout/home.dart';
import 'package:quiz/module/moody.dart';
import 'package:quiz/module/news.dart';
import 'package:quiz/module/workout.dart';
import 'package:quiz/shared/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  var provider = MyProvider();
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        return provider;
      },
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) => Home(),
        Moody.routeName: (context) => Moody(),
        News.routeName: (context) => News(),
        Workout.routeName: (context) => Workout(),
      },
    );
  }
}
