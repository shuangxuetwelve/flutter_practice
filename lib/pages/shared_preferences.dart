import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../components/dialogs.dart';
import '../components/input.dart';

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
    return _values.entries
        .map((e) => Item(keyText: e.key, valueText: e.value))
        .toList();
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

class Item extends StatelessWidget {
  late String _keyText;
  late String _valueText;

  Item({Key? key, required String keyText, String valueText = ""})
      : super(key: key) {
    _keyText = keyText;
    _valueText = valueText;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Input(text: _keyText),
        ),
        Expanded(
          child: Input(text: _valueText),
        ),
      ],
    );
  }
}
