import 'package:accomplisher/app_state_container.dart';
import 'package:accomplisher/models/goals_model.dart';
import 'package:accomplisher/ui/scaffold.dart';
import 'package:accomplisher/ui/screens/new_goal_screen.dart';
import 'package:accomplisher/ui/widgets/goal_card.dart';
import 'package:accomplisher/ui/widgets/list_card.dart';
import 'package:flutter/material.dart';

class GoalScreen extends StatelessWidget {
  static const String routeName = "/GoalScreen";

  static Widget _buildGoalList(BuildContext context, List<Goal> goals) {
    List<ListCard> _goals = goals.map<ListCard>((g) => new GoalCard(context, title: g.title))
      .toList();

    return _goals.length > 0 
      ? new ListView(children: _goals) 
      : Container(child: Text("no goals set yet!"));
  }

  final dynamic _addGoalButton = (context) => 
    FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        Navigator.of(context).pushNamed(NewGoalScreen.routeName);
      },
    );

  @override
  Widget build(BuildContext context) {
    final _goalState = AppStateContainer.of(context).goalState;

    return AScaffold(
      appBarTitle: 'Goals',
      body: _buildGoalList(context, _goalState.goals),
      navigatorIndex: 1,
      floatingActionButton: _addGoalButton(context),
    );
  }
}