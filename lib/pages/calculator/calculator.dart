import 'package:calculadora/pages/calculator/components/keyboard.dart';

import './components/display.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyPage(),
      backgroundColor: Colors.white,
    );
  }

  Widget bodyPage() {
    return Column(
      children: [
        Display('123'),
        KeyBoard(),
      ],
    );
  }
}
