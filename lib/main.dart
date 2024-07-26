

import 'package:flutter/material.dart';
import 'package:todoapp/mainScreen.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
        home: MainScreen()
    );
  }
}
