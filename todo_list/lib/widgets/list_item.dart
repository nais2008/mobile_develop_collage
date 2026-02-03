import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.name,
    required this.isEnabled,
    this.onChanged,
    this.onDelete,
  });

  final String name;
  final bool isEnabled;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: onDelete,
              icon: Icons.delete,
              backgroundColor: Colors.redAccent,
              borderRadius: BorderRadius.circular(15),
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple[200],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Checkbox(
                  value: isEnabled,
                  onChanged: onChanged,
                  checkColor: Colors.deepPurple[500],
                  activeColor: Colors.white,
                  side: BorderSide(color: Colors.white),
                ),
                Flexible(
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      decoration: isEnabled
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                      decorationColor: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
