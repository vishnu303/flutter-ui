import 'package:flutter/material.dart';
import 'package:list_ui/list_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListUi(),
    );
  }
}
