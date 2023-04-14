import 'package:flutter/material.dart';
import 'package:note_tracker/widgets/splash_intro.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  SplashIntro introterm = SplashIntro();
  @override
  void initState() {
    super.initState();
    introterm.intro(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/bgimg1.png"),
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
