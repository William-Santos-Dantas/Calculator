import 'package:flutter/material.dart';
import 'button.dart';
import 'button_row.dart';

class KeyBoard extends StatelessWidget {
  const KeyBoard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: Column(
          children: [
            ButtonRow([
              Button(text: 'AC', flex: 2,),
              Button(text: '%'),
              Button(text: '/'),
            ]),
            ButtonRow([
              Button(text: '7'),
              Button(text: '8'),
              Button(text: '9'),
              Button(text: 'X'),
            ]),
            ButtonRow([
              Button(text: '4'),
              Button(text: '5'),
              Button(text: '6'),
              Button(text: '-'),
            ]),
            ButtonRow([
              Button(text: '1'),
              Button(text: '2'),
              Button(text: '3'),
              Button(text: '+'),
            ]),
            ButtonRow([
              Button(text: '0', flex: 2,),
              Button(text: ','),
              Button(text: '='),
            ]),
          ],
        ));
  }
}
