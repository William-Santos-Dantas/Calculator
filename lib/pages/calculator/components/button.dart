import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final int flex;
  final Color color;
  final void Function(String) cb;

  Button({@required this.text, this.flex = 1, this.color = Colors.white, @required this.cb});
  Button.grey({@required this.text, this.flex = 1, this.color = Colors.grey, @required this.cb});
  Button.blue({@required this.text, this.flex = 1, this.color = Colors.blue, @required this.cb});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: TextButton(
        onPressed: () => cb(text),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: 32, fontWeight: FontWeight.w200),
        ),
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            //side: BorderSide(color: Colors.grey[300]),
          ),
        ),
      ),
    );
  }
}
