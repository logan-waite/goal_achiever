import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class Goal {
  String title;
  double percentComplete;

  Goal(this.title, {
    this.percentComplete = 0.0
  });
}

class GoalsModel extends Model {
  List<Goal> goals = List<Goal>();

  void addGoal(String title) {
    Goal _newGoal = new Goal(title);
    this.goals.insert(0, _newGoal);

    notifyListeners();
  }

  static GoalsModel of(BuildContext context) =>
    ScopedModel.of<GoalsModel>(context);
}