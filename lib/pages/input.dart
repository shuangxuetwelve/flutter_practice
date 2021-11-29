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
    return Scaffold(
      appBar: AppBar(title: const Text("Input Page Title")),
      body: SizedBox.expand(
        child: Column(children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                  width: 300,
                  child: Input(
                    placeholder: "Name",
                    onChanged: (String text) {
                      setState(() {
                        _text = text;
                      });
                    },
                  )),
              Container(
                  child: Text(
                    "Text: $_text",
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 13)),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          )
        ]),
      ),
    );
  }
}
