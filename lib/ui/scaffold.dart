import 'package:accomplisher/ui/colors.dart';
import 'package:accomplisher/ui/screens/accomplished_screen.dart';
import 'package:accomplisher/ui/screens/goal_screen.dart';
import 'package:accomplisher/ui/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class AScaffold extends StatefulWidget {
  static final GlobalKey<NavigatorState> navigatorState = GlobalKey();

  final String appBarTitle;
  final Widget body;
  final Color background;
  final int navigatorIndex;

  AScaffold({
    this.appBarTitle,
    this.body,
    this.background = AColors.background,
    this.navigatorIndex = 1
  });

  @override
  _AScaffoldState createState() => new _AScaffoldState();
}

class _AScaffoldState extends State<AScaffold> {
  List<BottomNavigationBarItem> _navBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.whatshot),
      title: Text("Accomplished")
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.track_changes),
      title: Text('Goals'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      title: Text("Settings")
    )
  ];

  Widget _buildAppBarTitle() {
    return Text(widget.appBarTitle ?? "Accomplisher");
  }

  void _onItemTapped(int index) {
    // setState(() {
    //   _selectedIndex = index;
    // });

    switch(index) {
      case 0: 
        Navigator.of(context).pushReplacementNamed(AccomplishedScreen.routeName);
        break;
      case 1:
        Navigator.of(context).pushReplacementNamed(GoalScreen.routeName);
        break;
      case 2:
        Navigator.of(context).pushReplacementNamed(SettingsScreen.routeName);
        break;
      default:
        Navigator.of(context).pushReplacementNamed(GoalScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      color: widget.background,
      child: widget.body
    ),
    appBar: AppBar(
      title: _buildAppBarTitle(),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: _navBarItems,
      onTap: _onItemTapped,
      currentIndex: widget.navigatorIndex,
      fixedColor: AColors.primary,
    ),
  );
  }
}