import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  late String _placeholder;
  void Function(String)? _onChanged;
  late int? _maxLines;

  Input({String placeholder = "", void Function(String)? onChanged, int? maxLines = 1}) {
    _placeholder = placeholder;
    _onChanged = onChanged;
    _maxLines = maxLines;
  }

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
      ),
      margin: const EdgeInsets.symmetric(vertical: 20),
    );
  }
}
