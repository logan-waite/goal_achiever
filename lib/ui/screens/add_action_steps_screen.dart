import 'package:accomplisher/strings.dart';
import 'package:accomplisher/ui/scaffold.dart';
import 'package:flutter/material.dart';


class AddActionStepsScreen extends StatelessWidget {
  static const String routeName = "/AddActionSteps";

  final InputDecoration _inputStyles =
    InputDecoration(
      labelText: strings().actionStep,
      border: OutlineInputBorder()
    );

  Widget _instructionText() => 
    Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        strings().actionStepInstructions
      )
    );

  Widget _addFieldButton =
    Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Icon(Icons.add),
          Text("Add another action item")
        ],
      )
    );

  Widget _textFields(context) =>
    Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: _inputStyles,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
            },
            // onSaved: (title) => _saveGoal(context, title),
          ),
          _addFieldButton
        ],
      )
    );

  Widget _submitButton(GlobalKey<FormState> formKey, BuildContext context) => 
    RaisedButton(
    onPressed: () {
      if (formKey.currentState.validate()) {
        formKey.currentState.save();
        Navigator.of(context).pushNamed(AddActionStepsScreen.routeName);             
      }
    },
    child: Text('Submit'),
  );

  Widget _actionStepForm(context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          _instructionText(),
          _textFields(context),
          _submitButton(_formKey, context),
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return AScaffold(
      appBarTitle: strings().addActionSteps,
      body: _actionStepForm(context),
      backgroundColor: Colors.white,
    );
  }
}