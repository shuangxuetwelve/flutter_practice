import 'package:flutter/material.dart';
import 'pages/input.dart';
import 'pages/buttons.dart';
import 'pages/dialogs.dart';
import 'pages/theming.dart';
import 'components/side_menu.dart';

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

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String pageName = "inputs";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Flutter"),
      ),
      body: PageContainer(pageName),
      drawer: Drawer(
        child: SideMenu((String name) {
          setState(() {
            pageName = name;
          });
        }),
      ),
    );
  }
}

class PageContainer extends StatelessWidget {
  String pageName;

  PageContainer(this.pageName);

  @override
  Widget build(BuildContext context) {
    switch (this.pageName) {
      case 'inputs':
        {
          return InputPage();
        }
      case 'buttons':
        {
          return ButtonsPage();
        }
      case 'dialogs':
        {
          return DialogsPage();
        }
      case 'theming':
      default:
        {
          return Theming();
        }
    }
  }
}
