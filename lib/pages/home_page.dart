// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:simple_todo/utils/alert_box.dart';
import 'package:simple_todo/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List todolist = [
    [
      "Make a game.",
      false,
    ],
    [
      "Make a yt channel",
      false
    ]
  ];
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todolist[index][1] = !todolist[index][1];
    });
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return ShowDialogBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "To Do",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createNewTask();
        },
        child: Icon(
          Icons.add,
          color: Colors.blue[900],
        ),
      ),
      backgroundColor: Colors.blue[100],
      body: ListView.builder(
        itemCount: todolist.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: todolist[index][0],
            isCompleted: todolist[index][1],
            onChanged: (value) {
              checkBoxChanged(value, index);
            },
          );
        },
      ),
    );
  }
}
