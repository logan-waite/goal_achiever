import 'package:accomplisher/models/goals_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class NewGoalScreen extends StatelessWidget {
  static const String routeName = "/NewGoal";

  InputDecoration _inputStyles() {
    return InputDecoration(
      labelText: "Goal Title",
      border: OutlineInputBorder()
    );
  }

  Widget _newGoalForm (model) {
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
                  model.addGoal(new Goal("This is a new goal"));                  
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Set New Goal")
      ),
      body: ScopedModel<GoalsModel>(
        model: GoalsModel(),
        child: ScopedModelDescendant<GoalsModel>(
          builder: (context, child, model) => _newGoalForm(model)
        )
      )
    );
  }
}