import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  final VoidCallback changeText;

  AddTodo({super.key, required this.changeText});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final TextEditingController todoText = TextEditingController();

  @override
  void dispose() {
    todoText.dispose();
    super.dispose();
  }

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
            todoText.clear();
            widget.changeText();
          },
          child: Text("Add"),
        ),
      ],
    );
  }
}