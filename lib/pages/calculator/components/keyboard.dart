import 'package:flutter/material.dart';
import 'button.dart';
import 'button_row.dart';

class KeyBoard extends StatelessWidget {
  final void Function(String) cb;
  final double height;
  KeyBoard(this.cb, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        child: Column(
          children: [
            ButtonRow([
              Button.grey(text: 'AC', flex: 2, cb: cb),
              Button.grey(text: '%', cb: cb),
              Button.grey(text: '÷', cb: cb),
            ]),
            Divider(
              height: 1,
            ),
            ButtonRow([
              Button(text: '7', cb: cb),
              Button(text: '8', cb: cb),
              Button(text: '9', cb: cb),
              Button.grey(text: 'X', cb: cb),
            ]),
            Divider(
              height: 1,
            ),
            ButtonRow([
              Button(text: '4', cb: cb),
              Button(text: '5', cb: cb),
              Button(text: '6', cb: cb),
              Button.grey(text: '-', cb: cb),
            ]),
            Divider(
              height: 1,
            ),
            ButtonRow([
              Button(text: '1', cb: cb),
              Button(text: '2', cb: cb),
              Button(text: '3', cb: cb),
              Button.grey(text: '+', cb: cb),
            ]),
            Divider(
              height: 1,
            ),
            ButtonRow([
              Button(text: '0', flex: 2, cb: cb),
              Button(text: ',', cb: cb),
              Button.blue(text: '=', cb: cb),
            ]),
          ],
        ));
  }
}
