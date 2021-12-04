import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  late String _placeholder;
  void Function(String)? _onChanged;
  int? _maxLines;
  String? _text;

  Input(
      {String placeholder = "",
      void Function(String)? onChanged,
      int? maxLines = 1,
      String? text,
      Key? key})
      : _placeholder = placeholder,
        _onChanged = onChanged,
        _maxLines = maxLines,
        _text = text,
        super(key: key);

  @override
  _InputState createState() => _InputState(
        placeholder: _placeholder,
        onChanged: _onChanged,
        maxLines: _maxLines,
        text: _text,
      );
}

class _InputState extends State<Input> {
  late String _placeholder;
  void Function(String)? _onChanged;
  int? _maxLines;
  TextEditingController? _controller;

  _InputState({
    String placeholder = "",
    void Function(String)? onChanged,
    int? maxLines = 1,
    String? text,
  })  : _placeholder = placeholder,
        _onChanged = onChanged,
        _maxLines = maxLines,
        _controller = TextEditingController(text: text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: _placeholder,
          alignLabelWithHint: true,
        ),
        onChanged: _onChanged,
        style: const TextStyle(fontSize: 15),
        maxLines: _maxLines,
        controller: _controller,
      ),
      margin: const EdgeInsets.symmetric(vertical: 20),
    );
  }
}
