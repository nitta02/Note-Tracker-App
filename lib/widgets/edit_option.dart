import 'package:flutter/material.dart';

class EditOption extends StatelessWidget {
  const EditOption({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        child: Column(
          children: [
            TextFormField(),
            TextFormField(),
          ],
        ),
      ),
    );
  }
}
