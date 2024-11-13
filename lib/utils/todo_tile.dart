// ignore_for_file: sort_child_properties_last, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool isCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? onDelete;
  TodoTile({
    super.key,
    required this.taskName,
    required this.isCompleted,
    required this.onChanged,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 25,
        left: 25,
        top: 20,
      ),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            onPressed: onDelete,
            icon: Icons.delete,
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.circular(12),
          )
        ]),
        child: Container(
          width: 1000,
          height: 120,
          padding: EdgeInsets.all(24),
          child: Row(
            children: [
              Checkbox(
                side: BorderSide(color: Colors.white),
                value: isCompleted,
                onChanged: onChanged,
                fillColor: WidgetStatePropertyAll(Colors.white),
                checkColor: Colors.blue,
              ),
              Text(
                taskName,
                style: TextStyle(
                  color: isCompleted ? const Color.fromARGB(255, 251, 133, 0) : Colors.white,
                  fontSize: isCompleted ? 15 : 16,
                  decoration: isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(24)),
        ),
      ),
    );
  }
}
