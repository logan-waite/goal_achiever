import 'package:accomplisher/ui/widgets/list_card.dart';
import 'package:flutter/material.dart';

class AddGoalCard extends ListCard {

  void _setNewGoal() {
    print("Set new goal");
  }

  @override
  Widget build(BuildContext context) {
    return ListCard(
      icon: Icons.add,
      goalText: "Add New Goal",
      action: _setNewGoal 
    );
  }
}