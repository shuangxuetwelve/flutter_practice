import 'package:flutter/material.dart';
import 'input.dart';

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
        child: GestureDetector(
          child: const Text("Input Page"),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text("Input Page Title"),
                ),
                body: Center(
                  child: Input(),
                ),
              );
            }));
          },
        ),
      ),
    );
  }
}
