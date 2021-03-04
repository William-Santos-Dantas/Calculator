import '../../models/Memory.dart';
import 'package:calculadora/pages/calculator/components/keyboard.dart';

import './components/display.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String value) {
    setState(() {
      memory.command(value);
    });
  }

  var height;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: bodyPage(),
      backgroundColor: Colors.black,
    );
  }

  Widget bodyPage() {
    return Column(
      children: [
        Display(memory.value, memory.operation, height * 0.3),
        KeyBoard(_onPressed, height * 0.7),
      ],
    );
  }
}
