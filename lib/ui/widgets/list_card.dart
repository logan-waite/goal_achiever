import 'package:accomplisher/ui/widgets/structure/ink_tap.dart';
import 'package:flutter/material.dart';

typedef GoalCardAction = void Function();

class ListCard extends StatelessWidget {

  final IconData icon;
  final String goalText;
  final GoalCardAction action;

  ListCard({
    this.icon,
    this.goalText,
    this.action
  });

  @override
  Widget build(BuildContext context) {
    return new Card(
      margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
      child: InkTap(
        onTap: action,
        child: ListTile(
          leading: Icon(
            this.icon,
            size: 30.0,
          ),
          title: Text(
            this.goalText,
            style: TextStyle(
              fontSize: 20.0
            ),
          ),
        )
      )
    );
  }
}