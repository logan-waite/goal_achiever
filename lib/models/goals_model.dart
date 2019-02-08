import 'package:flutter/material.dart';
// import 'package:scoped_model/scoped_model.dart';

class Goal {
  String title;
  double percentComplete;
  List<ActionStep> actionSteps = [];

  Goal(this.title, {
    this.percentComplete = 0.0,
    this.actionSteps
  });
}

class ActionStep {

}

class GoalsModel {
  List<Goal> _goals = List<Goal>();
  List<Goal> get goals => _goals;

  void addGoal(Goal goal) {
    this._goals.insert(0, goal);
  } 
}
