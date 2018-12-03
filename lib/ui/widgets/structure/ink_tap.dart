import 'package:flutter/material.dart';

class InkTap extends StatelessWidget {
  final Function onTap;
  final Widget child;

  InkTap({
    this.onTap,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: this.onTap,
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: this.child
        )
      )
    );
  }
}