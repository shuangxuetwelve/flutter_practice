import 'package:flutter/material.dart';
import 'pages/input.dart';
import 'pages/buttons.dart';
import 'pages/dialogs.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.orange,
        ),
        // primaryColor: Colors.green,
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
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
              child: const Text("Buttons Page"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ButtonsPage();
                }));
              },
            ),
            GestureDetector(
              child: const Text("Dialogs Page"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return DialogsPage();
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
