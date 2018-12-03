import 'package:accomplisher/models/goals_model.dart';
import 'package:accomplisher/ui/scaffold.dart';
import 'package:accomplisher/ui/widgets/add_goal.dart';
import 'package:accomplisher/ui/widgets/goal_card.dart';
import 'package:accomplisher/ui/widgets/list_card.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

// class GoalScreen extends StatefulWidget {
//   static const String routeName = "/GoalScreen";

//   @override
//   _GoalScreenState createState() => new _GoalScreenState();
// }

class GoalScreen extends StatelessWidget {
  static const String routeName = "/GoalScreen";

  Widget _buildGoalList(List<Goal> goals) {
    List<ListCard> _goals = goals.map<ListCard>((g) => new GoalCard(title: g.title))
      .toList();
    
    _goals.add(AddGoalCard());

    return ListView(
      children: _goals,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AScaffold(
      appBarTitle: 'Goals',
      body: ScopedModel<GoalsModel>(
        model: new GoalsModel(),
        child: new ScopedModelDescendant<GoalsModel>(
          builder: (context, child, model) => _buildGoalList(model.goals)
        )
      ),
      navigatorIndex: 1,
    );
  }
}