import 'package:flutter/material.dart';
import 'pages/input.dart';
import 'pages/buttons.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Flutter"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            GestureDetector(
              child: const Text("Input Page"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return InputPage();
                }));
              },
            ),
            GestureDetector(
              child: const Text("Button Page"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ButtonsPage();
                }));
              },
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
