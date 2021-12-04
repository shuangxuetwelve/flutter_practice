import 'package:flutter/material.dart';
import 'input.dart';

class InputDialog extends StatefulWidget {
  void Function(String)? _onConfirmed;

  InputDialog({Key? key, void Function(String)? onConfirmed})
      : super(key: key) {
    _onConfirmed = onConfirmed;
  }

  @override
  _InputDialogState createState() =>
      _InputDialogState(onConfirmed: _onConfirmed);
}

class _InputDialogState extends State<InputDialog> {
  String _text = "";
  void Function(String)? _onConfirmed;

  _InputDialogState({void Function(String)? onConfirmed}) {
    _onConfirmed = onConfirmed;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Dialog Title"),
      content: Input(
        placeholder: "Placeholder",
        onChanged: _onTextChanged,
      ),
      actions: <Widget>[
        TextButton(
          child: const Text("Cancel"),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: const Text("OK"),
          onPressed: () {
            if (_onConfirmed != null) {
              _onConfirmed!(_text);
            }
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

  void _onTextChanged(String text) {
    _text = text;
  }
}
