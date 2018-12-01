import 'package:accomplisher/ui/screens/goal_screen.dart';
import 'package:accomplisher/ui/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "/";

  @override
  _SplashScreenState createState() => new _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    // this will execute exactly once after the view has been built
    WidgetsBinding.instance
        .addPostFrameCallback((duration){

      Future.delayed(Duration(seconds: 1), () {
        Navigator.of(context).pushReplacementNamed(GoalScreen.routeName);
      });

    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AColors.background,
      child: Center(
        child: Container(
          constraints: BoxConstraints.loose(Size(150.0, 150.0)),
          child: Text("This is the splash screen"),
        ),
      ),
    );
  }
}