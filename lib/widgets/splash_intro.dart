import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note_tracker/screens/home_screen.dart';

class SplashIntro {
  void intro(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            )));
  }
}
