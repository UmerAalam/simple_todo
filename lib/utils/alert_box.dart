// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ShowDialogBox extends StatelessWidget {
  const ShowDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 150,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15, top: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add a new task',
                  contentPadding: EdgeInsets.only(
                    left: 10,
                    top: 10,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
