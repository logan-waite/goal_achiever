import 'package:accomplisher/app_state_container.dart';
// import 'package:accomplisher/models/goals_model.dart';
import 'package:accomplisher/ui/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class NewGoalScreen extends StatelessWidget {
  static const String routeName = "/NewGoal";
  List<Goal> goals;

  InputDecoration _inputStyles() {
    return InputDecoration(
      labelText: "Goal Title",
      border: OutlineInputBorder()
    );
  }


  Widget _newGoalForm(context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: _inputStyles(),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
              },
            ),
          ),
         RaisedButton(
          onPressed: () {
            // Validate will return true if the form is valid, or false if
            // the form is invalid.
            if (_formKey.currentState.validate()) {
              AppStateContainer.of(context).addGoal(Goal("This is a new goal"));
              print("...");
              print(goals);                
            }
          },
          child: Text('Submit'),
        )
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    final container = AppStateContainer.of(context);
    goals = container.goals;

    return AScaffold(
      appBarTitle: "Set New Goal",
      body: _newGoalForm(context)
    );
  }
}