import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Text",
      ),
    );
  }
}
