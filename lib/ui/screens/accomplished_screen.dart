import 'package:accomplisher/ui/scaffold.dart';
import 'package:flutter/material.dart';

class AccomplishedScreen extends StatefulWidget {
  static const String routeName = "/AccomplishedsScreen";

  @override
  _AccomplishedScreenState createState() => new _AccomplishedScreenState();
}

class _AccomplishedScreenState extends State<AccomplishedScreen> {
  @override
  Widget build(BuildContext context) {
    return AScaffold(
      appBarTitle: 'Accomplished',
      body: Text("This is the Accomplished screen"),
      navigatorIndex: 0,
    );
  }
}