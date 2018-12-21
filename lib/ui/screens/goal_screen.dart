import 'package:accomplisher/app_state_container.dart';
import 'package:accomplisher/ui/scaffold.dart';
import 'package:accomplisher/ui/widgets/add_goal.dart';
import 'package:accomplisher/ui/widgets/goal_card.dart';
import 'package:accomplisher/ui/widgets/list_card.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class GoalScreen extends StatelessWidget {
  static const String routeName = "/GoalScreen";
  List<Goal> _goals;

  static Widget _buildGoalList(BuildContext context, List<Goal> goals) {
    print(goals);
    List<ListCard> _goals = goals.map<ListCard>((g) => new GoalCard(context, title: g.title))
      .toList();
    _goals.add(AddGoalCard(context));
    // print(_goals);

    return new ListView(children: _goals);
  }

  @override
  Widget build(BuildContext context) {
    _goals = AppStateContainer.of(context).goals;

    return AScaffold(
      appBarTitle: 'Goals',
      body: _buildGoalList(context, _goals),
      navigatorIndex: 1,
    );
  }
}