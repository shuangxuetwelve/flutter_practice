import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  String _placeholder = "";
  void Function(String)? _onChanged;

  Input({String placeholder = "", void Function(String)? onChanged}) {
    _placeholder = placeholder;
    _onChanged = onChanged;
  }

  @override
  _InputState createState() =>
      _InputState(placeholder: _placeholder, onChanged: _onChanged);
}

class _InputState extends State<Input> {
  String _placeholder = "";
  void Function(String)? _onChanged;

  _InputState({String placeholder = "", void Function(String)? onChanged}) {
    _placeholder = placeholder;
    _onChanged = onChanged;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: _placeholder,
        ),
        onChanged: _onChanged,
      ),
      margin: const EdgeInsets.symmetric(vertical: 20),
    );
  }
}
