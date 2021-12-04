import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesPage extends StatefulWidget {
  const SharedPreferencesPage({Key? key}) : super(key: key);

  @override
  _SharedPreferencesPageState createState() => _SharedPreferencesPageState();
}

class _SharedPreferencesPageState extends State<SharedPreferencesPage> {
  final SharedPreferences? _prefs = null;
  Map _values = {
    "key1": 'value1',
    "key2": 'value2',
  };

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
    final prefs = await SharedPreferences.getInstance();
  }

  List<Widget> _constructColumnChildren() {
    return _values.entries.map((e) => Text("${e.key} ${e.value}")).toList();
  }

  void _onPressedFloatingActionButton() {}
}
