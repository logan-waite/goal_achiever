import 'package:accomplisher/ui/scaffold.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName = "/SettingsScreen";

  @override
  _SettingsScreenState createState() => new _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return AScaffold(
      appBarTitle: 'Settings',
      body: Text("This is the Settings screen"),
      navigatorIndex: 2,
    );
  }
}