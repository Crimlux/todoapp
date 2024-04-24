import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onchanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onchanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Slidable( 
        endActionPane: ActionPane(
          motion: StretchMotion(), 
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12.0),
              )
           ],
          ),
      child: Container(
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
    )
  );
 }
}  