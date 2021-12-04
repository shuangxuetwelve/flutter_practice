import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../components/dialogs.dart';

class SharedPreferencesPage extends StatefulWidget {
  const SharedPreferencesPage({Key? key}) : super(key: key);

  @override
  _SharedPreferencesPageState createState() => _SharedPreferencesPageState();
}

class _SharedPreferencesPageState extends State<SharedPreferencesPage> {
  SharedPreferences? _prefs;
  final Map<String, String> _values = {};

  _SharedPreferencesPageState() {
    _initializeSharedPreferencesInstance();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Scaffold(
        body: SizedBox.expand(
          child: Column(
            children: _constructColumnChildren(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _onPressedFloatingActionButton,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  void _initializeSharedPreferencesInstance() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _prefs!.getKeys().forEach((key) {
        String? value = _prefs!.getString(key);
        if (value != null) {
          _values[key] = value;
        }
      });
    });
  }

  List<Widget> _constructColumnChildren() {
    return _values.entries.map((e) => Text("${e.key} ${e.value}")).toList();
  }

  void _onPressedFloatingActionButton() {
    showDialog(
      context: context,
      builder: (BuildContext context) => InputDialog(
        onConfirmed: (text) => _save(key: text, value: ""),
      ),
    );
  }

  void _save({required String key, required String value}) {
    _prefs?.setString(key, value);
    setState(() {
      _values[key] = value;
    });
  }
}
