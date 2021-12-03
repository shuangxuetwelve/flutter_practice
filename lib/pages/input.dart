import 'package:flutter/material.dart';
import '../components/input.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _text = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(
              width: 300,
              child: Input(
                placeholder: "One-line TextField",
                onChanged: (String text) {
                  setState(() {
                    _text = text;
                  });
                },
              ),
            ),
            Container(
              child: Text(
                "Text in the above: $_text",
              ),
              margin: const EdgeInsets.symmetric(horizontal: 13),
            ),
            SizedBox(
              width: 300,
              child: Input(
                placeholder: "Multi-line TextField",
                maxLines: 5,
              ),
            ),
            SizedBox(
              width: 300,
              child: Input(
                placeholder: "Auto-grow TextField",
                maxLines: null,
              ),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        )
      ]),
    );
  }
}
