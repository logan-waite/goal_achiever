import 'package:accomplisher/models/app_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Goal {
  String title;
  double percentComplete;

  Goal(this.title, {
    this.percentComplete = 0.0
  });
}

class _AppStateContainerState extends State<AppStateContainer> {
  // AppState state;
  List<Goal> goals;

  @override
  void initState() {
    goals = new List<Goal>();

    super.initState();
  }

  void addGoal(Goal goal) {
    setState(() {
      goals.insert(0, goal);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new _InheritedStateContainer(
      data: this,
      child: widget.child,
    );
  }
}

class AppStateContainer extends StatefulWidget {
  // final AppState state;
  final Widget child;

  AppStateContainer({
    @required this.child,
    // this.state
  });

  static _AppStateContainerState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_InheritedStateContainer)
      as _InheritedStateContainer)
      .data;
  }

  @override
  _AppStateContainerState createState() => new _AppStateContainerState();
}

class _InheritedStateContainer extends InheritedWidget {
  final _AppStateContainerState data;

  _InheritedStateContainer({
    Key key,
    @required this.data,
    @required Widget child,
  }) : super(key: key, child:child);

  @override
  bool updateShouldNotify(_InheritedStateContainer old) => true;
}