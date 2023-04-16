// ignore: file_names
// ignore_for_file: file_names, unused_local_variable, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_tracker/models/boxes.dart';
import 'package:note_tracker/models/savenotes.dart';
import 'package:note_tracker/widgets/edit_option.dart';
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
            height: context.screenHeight / 3,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: titleController,
                    decoration: InputDecoration(
                        hintText: "Enter Title Here",
                        hintStyle: TextStyle(
                          letterSpacing: 1.5,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                  15.heightBox,
                  TextFormField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                        hintText: "Enter Description Here",
                        hintStyle: TextStyle(
                          letterSpacing: 1.5,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                  15.heightBox,
                  MaterialButton(
                    color: Colors.orange,
                    minWidth: context.screenWidth / 1,
                    onPressed: () {
                      setState(() {
                        boxNotes.put(
                          "key_${titleController.text}",
                          SaveNote(
                              title: titleController.text,
                              description: descriptionController.text),
                        );
                        titleController.clear();
                        descriptionController.clear();
                      });
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
              height: context.screenHeight / 2.5,
              color: Colors.white,
              child: Card(
                child: ListView.builder(
                  itemCount: boxNotes.length,
                  itemBuilder: (context, index) {
                    SaveNote savenotes = boxNotes.getAt(index);
                    return Card(
                      elevation: 15.0,
                      child: ListTile(
                        leading: IconButton(
                          onPressed: () {
                            setState(() {
                              boxNotes.deleteAt(index);
                            });
                          },
                          icon: Icon(
                            CupertinoIcons.delete_solid,
                          ),
                        ),
                        title: Text(
                          "Notes Name : ${savenotes.title}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                        subtitle: Text(
                          "Description : ${savenotes.description}",
                          style: TextStyle(
                            letterSpacing: 1.5,
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            // return FloatingActionButton(onPressed: onPressed)
                          },
                          icon: Icon(CupertinoIcons.pencil_circle_fill),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          5.heightBox,
          MaterialButton(
            color: Colors.orange,
            minWidth: context.screenHeight / 1,
            onPressed: () {
              setState(() {
                boxNotes.clear();
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(CupertinoIcons.delete),
                Text("Delete All"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
