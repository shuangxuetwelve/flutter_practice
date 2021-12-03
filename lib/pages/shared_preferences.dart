import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesPage extends StatefulWidget {
  const SharedPreferencesPage({Key? key}) : super(key: key);

  @override
  _SharedPreferencesPageState createState() => _SharedPreferencesPageState();
}

class _SharedPreferencesPageState extends State<SharedPreferencesPage> {
  final SharedPreferences? _prefs = null;

  _SharedPreferencesPageState() {
    _initializeSharedPreferencesInstance();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(),
    );
  }

  void _initializeSharedPreferencesInstance() async {
    final prefs = await SharedPreferences.getInstance();
  }
}
