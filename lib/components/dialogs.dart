import 'package:flutter/material.dart';
import 'input.dart';

class InputDialog extends StatefulWidget {
  const InputDialog({Key? key}) : super(key: key);

  @override
  _InputDialogState createState() => _InputDialogState();
}

class _InputDialogState extends State<InputDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Dialog Title"),
      content: Input(
        placeholder: "Placeholder",
      ),
      actions: <Widget>[
        TextButton(
          child: const Text("Cancel"),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: const Text("OK"),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
