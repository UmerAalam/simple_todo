// ignore_for_file: sort_child_properties_last, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool isCompleted;
  Function(bool?)? onChanged;
  TodoTile({
    super.key,
    required this.taskName,
    required this.isCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        width: 1000,
        height: 80,
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            Checkbox(
              value: isCompleted,
              onChanged: onChanged,
              fillColor: WidgetStatePropertyAll(Colors.yellow[900]),
            ),
            Text(
              taskName,
              style: TextStyle(color: Colors.grey[800]),
            ),
          ],
        ),
        decoration: BoxDecoration(color: Colors.yellow, borderRadius: BorderRadius.circular(24)),
      ),
    );
  }
}
