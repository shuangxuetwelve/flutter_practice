import 'package:flutter/material.dart';
import '../components/input.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Input Page Title")),
      body: SizedBox.expand(
        child: Column(
          children: <Widget>[SizedBox(width: 300, child: Input())],
        ),
      ),
    );
  }
}
