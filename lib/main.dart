import 'package:flutter/material.dart';
import 'pages/input.dart';
import 'pages/buttons.dart';
import 'pages/dialogs.dart';
import 'pages/theming.dart';
import 'pages/shared_preferences.dart';
import 'pages/images.dart' as imagesPage;
import 'components/side_menu.dart';
import 'constants/common.dart';

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
  PageType _pageType = PageType.inputs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Flutter"),
      ),
      body: PageContainer(_pageType),
      drawer: Drawer(
        child: SideMenu((PageType pageType) {
          setState(() {
            _pageType = pageType;
          });
        }),
      ),
    );
  }
}

class PageContainer extends StatelessWidget {
  PageType _pageType;

  PageContainer(this._pageType);

  @override
  Widget build(BuildContext context) {
    switch (_pageType) {
      case PageType.inputs:
        {
          return InputPage();
        }
      case PageType.buttons:
        {
          return ButtonsPage();
        }
      case PageType.dialogs:
        {
          return DialogsPage();
        }
      case PageType.theming:
        {
          return Theming();
        }
      case PageType.sharedPreferences:
        {
          return const SharedPreferencesPage();
        }
      case PageType.images:
      default:
        {
          return const imagesPage.Page();
        }
    }
  }
}
