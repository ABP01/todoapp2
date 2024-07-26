import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  TextEditingController todoText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Task todo: "),
        TextField(
          controller: todoText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(5),
            hintText: "Write your text over here...",
            // icon: Icon(FeatherIcons.edit2)
          ),
        ),
        ElevatedButton(
            onPressed: () {
              print(todoText.text);
              todoText.text = "";
            },
            child: Text("Add"))
      ],
    );
  }
}
