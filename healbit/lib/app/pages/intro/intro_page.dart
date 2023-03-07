import 'package:flutter/material.dart';
import 'package:healbit/app/pages/home/home_page.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPage extends StatefulWidget {
  static const String routeName = '/intro';
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  void goToHome() {
    Navigator.pushReplacementNamed(context, HomePage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      scrollPhysics: const BouncingScrollPhysics(),
      showSkipButton: true,
      isTopSafeArea: true,
      isBottomSafeArea: true,
      next: const Icon(Icons.arrow_forward),
      skip: const Text('skip'),
      done: const Text('done'),
      pages: [],
      dotsDecorator: const DotsDecorator(),
      onSkip: goToHome,
      onDone: goToHome,
    );
  }
}