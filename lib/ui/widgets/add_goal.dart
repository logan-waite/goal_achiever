import 'package:accomplisher/ui/screens/new_goal_screen.dart';
import 'package:accomplisher/ui/widgets/list_card.dart';
import 'package:flutter/material.dart';

class AddGoalCard extends ListCard {

  AddGoalCard(BuildContext context) : super(context);

  void _setNewGoal() {
    Navigator.of(context).pushNamed(NewGoalScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return ListCard(
      context,
      icon: Icons.add,
      goalText: "Add New Goal",
      action: _setNewGoal 
    );
  }
}