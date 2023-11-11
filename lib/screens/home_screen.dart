import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_tracker/screens/drawer_screen.dart';
import 'package:note_tracker/utils/homePage_screen.dart';
import 'package:note_tracker/utils/profilePage_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndexPage = 0;
  List<Widget> indexPages = [
    const HomePageScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.orange[300],
      appBar: AppBar(
        title: const Text(
          "Track Note",
          style: TextStyle(
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.exclamationmark_circle))
        ],
      ),
      body: indexPages[currentIndexPage],
      bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndexPage,
          backgroundColor: Colors.orange[300],
          elevation: 15.0,
          height: 50,
          onDestinationSelected: (index) {
            setState(() {
              currentIndexPage = index;
            });
          },
          destinations: const [
            NavigationDestination(
                icon: Icon(CupertinoIcons.home), label: "Home"),
            NavigationDestination(
                icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
          ]),
      drawer: const DrawerScreen(),
    );
  }
}
