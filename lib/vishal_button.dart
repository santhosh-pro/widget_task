import 'package:flutter/material.dart';

class VishalButton extends StatelessWidget {
  final String name;
  VishalButton({@required this.name});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(child: Text(name+""), onPressed: ()=>{}, color: Colors.red,);
  }
}
