import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_tracker/constants/constants.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_tracker/models/boxes.dart';
import 'package:note_tracker/models/savenotes.dart';
import 'package:note_tracker/screens/intro_screen.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SaveNoteAdapter());
  boxNotes = await Hive.openBox<SaveNote>(openBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const IntroScreen(),
    );
  }
}
