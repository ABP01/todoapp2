import 'package:flutter/material.dart';
import 'package:todoapp/addTodo.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _text = "Simple Text";

  void _changeText() {
    setState(() {
      _text = "Hello World";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Text("Drawer data"),
      ),
      appBar: AppBar(
        title: const Text("Todo App"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    height: 200,
                    child: AddTodo(changeText: _changeText),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text(_text),
      ),
    );
  }
}