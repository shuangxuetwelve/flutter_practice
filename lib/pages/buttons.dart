import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        children: <Widget>[
          Container(
            child: SizedBox(
              child: ElevatedButton(
                child: const Text(
                  "ElevatedButton",
                ),
                onPressed: () {},
              ),
              width: 300,
              height: 50,
            ),
            margin: const EdgeInsets.symmetric(vertical: 20),
          ),
        ],
      ),
    );
  }
}
