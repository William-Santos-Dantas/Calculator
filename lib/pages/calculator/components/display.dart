import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String text;
  final String operation;
  final double height;
  Display(
    this.text,
    this.operation,
    this.height,
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: height,
        padding: EdgeInsets.only(right: 10),
        color: Color.fromRGBO(48, 48, 48, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            operation != null
                ? AutoSizeText(
                    operation,
                    textAlign: TextAlign.end,
                    minFontSize: 20,
                    maxFontSize: 80,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.w100,
                      decoration: TextDecoration.none,
                      fontSize: 40,
                    ),
                  )
                : Text(''),
            AutoSizeText(
              text,
              textAlign: TextAlign.end,
              minFontSize: 20,
              maxFontSize: 80,
              maxLines: 1,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w100,
                decoration: TextDecoration.none,
                fontSize: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
