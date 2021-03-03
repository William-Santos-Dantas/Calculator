import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final int flex;
  Button({@required this.text, this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: TextButton(
        onPressed: () {},
        child: Text(text, style: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.w200),),
        style: TextButton.styleFrom(backgroundColor: Colors.white),
      ),
    );
  }
}
