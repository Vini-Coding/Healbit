import 'package:flutter/material.dart';
import 'package:healbit/app/pages/home/home_page.dart';
import 'package:healbit/app/pages/intro/intro_page.dart';

class HealbitApp extends StatelessWidget {
  const HealbitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: IntroPage.routeName,
      routes: {
        IntroPage.routeName:(context) => const IntroPage(),
        HomePage.routeName: (context) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}