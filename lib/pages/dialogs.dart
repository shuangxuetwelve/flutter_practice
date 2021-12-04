import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import '../components/dialogs.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        children: <Widget>[
          Container(
            child: SizedBox(
              child: ElevatedButton(
                child: const Text("Snack Bar"),
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("I am a snack bar!"),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.teal),
                ),
              ),
              width: 300,
              height: 50,
            ),
            margin: const EdgeInsets.symmetric(vertical: 20),
          ),
          Container(
            child: SizedBox(
              child: ElevatedButton(
                child: const Text("Snack Bar with Action"),
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text("I am a snack bar!"),
                      action: SnackBarAction(label: "Undo", onPressed: () {}),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.teal),
                ),
              ),
              width: 300,
              height: 50,
            ),
            margin: const EdgeInsets.symmetric(vertical: 20),
          ),
          Container(
            child: SizedBox(
              child: ElevatedButton(
                child: const Text("Alert Dialog"),
                onPressed: () {
                  showDialog<String>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Dialog Title"),
                          content: const Text("Dialog content."),
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
                      });
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blueAccent),
                ),
              ),
              width: 300,
              height: 50,
            ),
            margin: const EdgeInsets.symmetric(vertical: 20),
          ),
          Container(
            child: SizedBox(
              child: ElevatedButton(
                child: const Text("Alert Dialog with TextField"),
                onPressed: () {
                  showDialog<String>(
                      context: context,
                      builder: (BuildContext context) {
                        return const InputDialog();
                      });
                },
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
