import 'package:accomplisher/ui/widgets/list_card.dart';
import 'package:flutter/material.dart';

class GoalCard extends ListCard {
  final String title;

  GoalCard({
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return ListCard(
      icon: Icons.track_changes,
      goalText: this.title,
      action: () => print("clicking goal card")
    );
  }
}