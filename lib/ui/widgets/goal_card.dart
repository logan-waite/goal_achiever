import 'package:accomplisher/ui/widgets/list_card.dart';
import 'package:flutter/material.dart';

class GoalCard extends ListCard {
  final String title;
  final BuildContext context;

  GoalCard(this.context, {
    this.title
  }) : super(context);

  @override
  Widget build(BuildContext context) {
    return ListCard(
      context,
      icon: Icons.track_changes,
      goalText: this.title,
      action: () => print("clicking goal card")
    );
  }
}