import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  static String id = "settings";

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
        ),
      ),
    );
  }
}
