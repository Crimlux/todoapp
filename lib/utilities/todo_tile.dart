import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onchanged;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onchanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child:Container(
        padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(13),
        ),
        child:Row(
          children: [
            Checkbox(
              value: taskCompleted, 
              onChanged:onchanged,
              activeColor: Colors.black,
              ),
             Text(taskName,
             style: TextStyle(
              decoration:taskCompleted 
             ? TextDecoration.lineThrough
             : TextDecoration.none,
             )
             ),
          ],
        ),
      ),
    );
  }
}  