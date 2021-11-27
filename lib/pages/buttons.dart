import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Input Page Title")),
      body: SizedBox.expand(
        child: Column(children: <Widget>[
          Container(
            child: SizedBox(
              child: ElevatedButton(
                child: const Text(
                  "ElevatedButton",
                  style: TextStyle(fontSize: 15),
                ),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange),
                ),
              ),
              width: 300,
              height: 50,
            ),
            margin: const EdgeInsets.symmetric(vertical: 20),
          ),
        ]),
      ),
    );
  }
}
