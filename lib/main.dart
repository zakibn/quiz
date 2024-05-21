import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/screens/quiz_screen/quiz_screen.dart';
import 'package:quiz/screens/welcome_screen.dart';

import 'screens/result_screen/result_screen.dart';
import 'util/bindings_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     title: 'Flutter Quiz App',
      debugShowCheckedModeBanner: false,
      initialBinding: BilndingsApp(),

      home:  WelcomeScreen(),
      getPages: [
         GetPage(name: WelcomeScreen.routeName, page: () => WelcomeScreen()),
         GetPage(name: QuizScreen.routeName, page: () =>  QuizScreen()),
         GetPage(name: ResultScreen.routeName, page: () =>  ResultScreen()),
      ],
    );
  }
}