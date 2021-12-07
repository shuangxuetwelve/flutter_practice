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
        .map((e) => Item(
              keyText: e.key,
              valueText: e.value,
              onDeleted: () {
                _remove(key: e.key);
              },
            ))
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

  void _remove({required String key}) {
    _prefs?.remove(key);
    setState(() {
      _values.remove(key);
    });
  }
}

class Item extends StatelessWidget {
  late final String _keyText;
  late final String _valueText;
  SharedPreferences? _prefs;
  final void Function()? _onDeleted;

  Item({
    Key? key,
    required String keyText,
    String valueText = "",
    void Function()? onDeleted,
  })  : _keyText = keyText,
        _valueText = valueText,
        _onDeleted = onDeleted,
        super(key: key) {
    _initializeSharedPreferencesInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Text(_keyText),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Input(
                text: _valueText,
                onChanged: (text) {
                  _prefs?.setString(_keyText, text);
                },
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.remove_circle),
            onPressed: _onDeleted,
            iconSize: 25,
            color: Theme.of(context).colorScheme.error,
          ),
        ],
      ),
    );
  }

  void _initializeSharedPreferencesInstance() async {
    _prefs = await SharedPreferences.getInstance();
  }
}
