import 'package:accomplisher/ui/scaffold.dart';
import 'package:accomplisher/ui/widgets/add_goal.dart';
import 'package:accomplisher/ui/widgets/goal_card.dart';
import 'package:accomplisher/ui/widgets/list_card.dart';
import 'package:flutter/material.dart';

class GoalScreen extends StatefulWidget {
  static const String routeName = "/GoalScreen";

  @override
  _GoalScreenState createState() => new _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  List<ListCard> _goalsList = <ListCard>[];

  Widget _buildGoalList() {
    _goalsList.add(AddGoalCard());
    
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: _goalsList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AScaffold(
      appBarTitle: 'Goals',
      body: _buildGoalList(),
      navigatorIndex: 1,
    );
  }
}