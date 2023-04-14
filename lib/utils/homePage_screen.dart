// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Container(
            height: context.screenHeight / 2.5,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: titleController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                  15.heightBox,
                  TextFormField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                  15.heightBox,
                  MaterialButton(
                    color: Colors.orange,
                    minWidth: context.screenWidth / 1,
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Text("Add"),
                  )
                ],
              ),
            ),
          ),
          10.heightBox,
          Expanded(
            child: Container(
              height: context.screenHeight / 1.5,
              color: Colors.white,
              child: Card(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return const ListTile();
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
