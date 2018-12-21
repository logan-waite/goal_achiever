import 'package:flutter/material.dart';
// import 'package:scoped_model/scoped_model.dart';

class Goal {
  String title;
  double percentComplete;

  Goal(this.title, {
    this.percentComplete = 0.0
  });
}

// class GoalsModel extends InheritedModel{
//   List<Goal> _goals = List<Goal>();
//   List<Goal> get goals => _goals;

//   void addGoal(Goal goal) {
//     this._goals.insert(0, goal);
//     print(this.goals[0].title);

//   } 
// }
