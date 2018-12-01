import 'package:accomplisher/ui/widgets/list_card.dart';
import 'package:flutter/material.dart';

class GoalCard extends ListCard {
  @override
  Widget build(BuildContext context) {
    return ListCard(
      icon: Icons.track_changes,
      goalText: "New goal",
      action: () => print("adding goal")
    );
  }
}